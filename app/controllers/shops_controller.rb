class ShopsController < ApplicationController
  skip_before_action :authenticate_user!

  def home
    @shops = []

    if params[:address].present?
      location = Geocoder.search(params[:address]).first
      if location
        @latitude = location.latitude
        @longitude = location.longitude
        set_shops(@latitude, @longitude)
      else
        flash.now[:danger] = "入力が正しくありません"
      end
    elsif params[:latitude].present? && params[:longitude].present?
      @latitude = params[:latitude]
      @longitude = params[:longitude]
      set_shops(@latitude, @longitude)
    end

    set_map_data(@latitude, @longitude, @shops)
  end

  def show
    @shop = Shop.find(params[:id])
    @reviews = @shop.reviews.includes(:user).order(created_at: :desc)
  end

  def bookmarks_ranking
    @shops = Shop.joins(:bookmarks).group('shops.id').order('COUNT(bookmarks.id) DESC').limit(10)
  end

  private

  def set_shops(latitude, longitude)
    prefecture = fetch_prefecture_by_coordinates(latitude, longitude)
    flash.now[:danger] = "お店が見つかりません" unless prefecture.present?
    @gourmets = fetch_gourmet_by_prefectures(prefecture)
    @shops = fetch_shop_by_gourmets(@gourmets, latitude, longitude) if @gourmets
    flash.now[:danger] = "お店が見つかりません" unless @shops.present?
    @shops = filter_shops(@shops)
  end

  def filter_shops(shops)
    if params[:rating].present?
      shops.select! { |shop| shop.rating && shop.rating >= params[:rating].to_f }
    end
    if params[:total_ratings].present?
      shops.select! { |shop| shop.total_ratings && shop.total_ratings >= params[:total_ratings].to_i }
    end
    if params[:price_level].present?
      shops.select! { |shop| shop.price_level && shop.price_level == params[:price_level].to_s }
    end
    if params[:gourmet].present?
      shops.select! { |shop| shop.gourmets.any? { |gourmet| gourmet.name == params[:gourmet] } }
    end
    shops
  end

  def set_map_data(latitude, longitude, marker_data)
    gon.latitude = latitude || 35.6812362
    gon.longitude = longitude || 139.7645499
    gon.markerData = marker_data
  end

  def fetch_prefecture_by_coordinates(latitude, longitude)
    location = Geocoder.search([latitude, longitude], language: :ja).first
    prefecture = location.address_components.find { |component| component['types'].include?('administrative_area_level_1') }
    prefecture['long_name'] if prefecture
  end

  def fetch_gourmet_by_prefectures(prefecture)
    prefecture = Prefecture.find_by(name: prefecture)
    prefecture.gourmets.pluck(:name) if prefecture
  end

  def fetch_shop_by_gourmets(gourmets, latitude, longitude)
    shops = []

    gourmets.each do |gourmet|
      base_url = "https://maps.googleapis.com/maps/api/place/nearbysearch/json?"
      parameters = {
        location: "#{latitude},#{longitude}",
        radius: 1000,
        types: 'restaurant',
        keyword: gourmet,
        language: 'ja',
        key: ENV['API_KEY']
      }

      url = base_url + parameters.to_query
      response = Net::HTTP.get(URI(url))
      results = JSON.parse(response)["results"]

      results.each do |place_data|
        shop = Shop.find_or_create_from_api_data(place_data, gourmet)
        shops << shop unless shops.any? { |s| s.place_id == shop.place_id }
      end
    end
    shops.sort_by! { |shop| -shop.rating.to_f }
    shops
  end
end
