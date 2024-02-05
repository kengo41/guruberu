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
        flash.now[:danger] = t('defaults.message.input_failed')
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

  def bookmark_ranking
    @selected_prefecture_id = params[:prefecture_id]
    if @selected_prefecture_id.present?
      @shops = Shop.joins(:gourmets).where(gourmets: { prefecture_id: @selected_prefecture_id })
                  .joins(:bookmarks).group('shops.id').order('COUNT(bookmarks.id) DESC').limit(10)
    else
      @shops = Shop.joins(:bookmarks).group('shops.id').order('COUNT(bookmarks.id) DESC').limit(10)
    end
    flash.now[:danger] = t('defaults.message.not_found') unless @shops.present?
  end

  private

  def set_shops(latitude, longitude)
    prefecture = fetch_prefecture_by_coordinates(latitude, longitude)
    flash.now[:danger] = t('defaults.message.not_found') unless prefecture.present?
    @gourmets = fetch_gourmet_by_prefectures(prefecture)
    @shops = fetch_shop_by_gourmets(@gourmets, latitude, longitude) if @gourmets
    @shops = filter_shops(@shops)
    flash.now[:danger] = t('defaults.message.not_found') unless @shops.present?
  end

  def filter_shops(shops)
    shops.select! { |shop| shop.rating && shop.rating >= params[:rating].to_f } if params[:rating].present?
    shops.select! { |shop| shop.total_ratings && shop.total_ratings >= params[:total_ratings].to_i } if params[:total_ratings].present?
    shops.select! { |shop| shop.price_level && shop.price_level == params[:price_level].to_s } if params[:price_level].present?
    shops.select! { |shop| shop.gourmets.any? { |gourmet| gourmet.name == params[:gourmet] } } if params[:gourmet].present?
    if params[:sorting].present? && [t('defaults.rating'), t('defaults.total_ratings'), t('defaults.distance')].include?(params[:sorting])
      if params[:sorting] == t('defaults.rating')
        shops.sort_by! { |shop| -shop.rating.to_f }
      elsif params[:sorting] == t('defaults.total_ratings')
        shops.sort_by! { |shop| -shop.total_ratings.to_i }
      elsif params[:sorting] == t('defaults.distance')
        shops.sort_by! { |shop| shop.distance_to(@latitude, @longitude) }
      end
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
        next unless place_data['rating'].to_f >= 3 && place_data['user_ratings_total'].to_i >= 10 && place_data['business_status'] == 'OPERATIONAL'
        shop = Shop.find_or_create_from_api_data(place_data, gourmet)
        shops << shop unless shops.any? { |s| s.place_id == shop.place_id }
      end
    end
    shops
  end
end
