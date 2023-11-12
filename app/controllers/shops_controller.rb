class ShopsController < ApplicationController
  skip_before_action :authenticate_user!

  def home
    gon.latitude = 34.397667
    gon.longitude = 132.4728037

    @address = params[:address]
    @client = GooglePlaces::Client.new(ENV['API_KEY'])

    if params[:address].present?
      location = Geocoder.search(params[:address]).first
      if location
        gon.latitude = location.latitude
        gon.longitude = location.longitude
        @shops = @client.spots(location.latitude, location.longitude, radius: 100, types: ['restaurant'], keyword: '広島風お好み焼き', language: 'ja').first(20)
      else
        @shops = []
      end
    elsif params[:latitude].present? && params[:longitude].present?
      gon.latitude = params[:latitude]
      gon.longitude = params[:longitude]
      @shops = @client.spots(params[:latitude], params[:longitude], radius: 100, types: ['restaurant'], keyword: '広島風お好み焼き', language: 'ja').first(20)
    else
      @shops = []
    end

    gon.markerData = @shops
  end
end
