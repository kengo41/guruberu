class ShopsController < ApplicationController
  skip_before_action :authenticate_user!

  def home
    @shops = []

    if params[:address].present?
      location = Geocoder.search(params[:address]).first
      if location
        latitude = location.latitude
        longitude = location.longitude
      end
    elsif params[:latitude].present? && params[:longitude].present?
      latitude = params[:latitude]
      longitude = params[:longitude]
    end

    if within_japan?(latitude, longitude)
      prefecture = fetch_prefecture_by_coordinates(latitude, longitude)
      gourmets = fetch_gourmet_by_prefectures(prefecture)
      @shops = fetch_shop_by_gourmets(gourmets, latitude, longitude)
    end

    set_map_data(latitude, longitude, @shops)
  end

  def show
    @shop = Shop.find(params[:id])
  end

  private

  def within_japan?(latitude, longitude)
    japan_latitude_range = (20.42..45.55)
    japan_longitude_range = (122.93..153.98)
    japan_latitude_range.cover?(latitude.to_f) && japan_longitude_range.cover?(longitude.to_f)
  end

  def set_map_data(latitude, longitude, marker_data)
    gon.latitude = latitude || 35.6812362
    gon.longitude = longitude || 139.7645499
    gon.markerData = marker_data
  end

  def fetch_prefecture_by_coordinates(latitude, longitude)
    base_url = "https://maps.googleapis.com/maps/api/geocode/json?"
    parameters = {
      latlng: "#{latitude},#{longitude}",
      language: 'ja',
      key: ENV['API_KEY']
    }

    url = base_url + parameters.to_query
    response = Net::HTTP.get(URI(url))
    address_components = JSON.parse(response)["results"][0]['address_components']
    prefecture = address_components.find { |component| component['types'].include?('administrative_area_level_1') }
    prefecture['long_name'] if prefecture
  end

  def fetch_gourmet_by_prefectures(prefecture)
    prefecture = Prefecture.find_by(name: prefecture)
    prefecture.gourmets.pluck(:name)
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

      sorted_by_user_ratings = results.sort { |a, b| b['user_ratings_total'].to_i <=> a['user_ratings_total'].to_i }.first(10)
      top_rated_shops = sorted_by_user_ratings.sort_by { |place_data| -place_data['rating'].to_f }.first(5)

      top_rated_shops.each do |place_data|
        shop = Shop.find_or_create_from_api_data(place_data, gourmet)
        shops << shop unless shops.any? { |s| s.place_id == shop.place_id }
      end
    end
    shops
  end
end
