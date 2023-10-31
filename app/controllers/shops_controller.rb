class ShopsController < ApplicationController
  skip_before_action :authenticate_user!

  def home
    @address = params[:address]
    @shops = fetch_nearby_shops(@address)
  end

  private

  def fetch_nearby_shops(address)
    places_client = GooglePlaces::Client.new(ENV['API_KEY'])

    # 住所を緯度経度に変換
    result = Geocoder.search(address).first
    latitude = result&.latitude
    longitude = result&.longitude

    if latitude && longitude
      # Google Places APIにリクエストして飲食店情報を取得
      places_client.spots(latitude, longitude, types: ['restaurant'], keyword: '広島風お好み焼き', radius: 50, language: 'ja')
    else
      [] # 変換できなかった場合は空の配列を返す
    end
  end
end
