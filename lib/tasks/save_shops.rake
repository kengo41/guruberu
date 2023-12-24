require 'csv'
require 'open-uri'
API_KEY = ENV['API_KEY']

namespace :shops do
  desc 'ショップを取得し保存する'
  task :get_and_save_details => :environment do
    def get_place_id(phone_number)
      client = GooglePlaces::Client.new(API_KEY)
      spot = client.spots_by_query(phone_number).first
      spot.place_id if spot
    end

    def get_detail_data(shop)
      place_id = get_place_id(shop['電話番号'])

      if place_id
        existing_shop = Shop.find_by(place_id: place_id)
        if existing_shop
          puts "既に保存済みです: #{shop['店名']}"
          return nil
        end

        place_detail_query = URI.encode_www_form(
          place_id: place_id,
          language: 'ja',
          key: API_KEY
        )
        place_detail_url = "https://maps.googleapis.com/maps/api/place/details/json?#{place_detail_query}"
        place_detail_page = URI.open(place_detail_url).read
        place_detail_data = JSON.parse(place_detail_page)

        result = {}
        result[:name] = shop['店名']
        full_address = place_detail_data['result']['formatted_address']
        result[:address] = full_address.sub(/\A[^ ]+/, '')
        result[:phone_number] = place_detail_data['result']['formatted_phone_number']
        result[:opening_hours] = place_detail_data['result']['opening_hours']['weekday_text'].join("\n") if place_detail_data['result']['opening_hours'].present?
        photo_url = place_detail_data['result']['photos'].first
        result[:image] = "https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=#{photo_url['photo_reference']}&key=#{API_KEY}" if photo_url['photo_reference'].present?
        result[:website] = place_detail_data['result']['website']
        result[:place_id] = place_id
        result[:latitude] = place_detail_data['result']['geometry']['location']['lat']
        result[:longitude] = place_detail_data['result']['geometry']['location']['lng']
        result[:rating] = place_detail_data['result']['rating']
        result[:total_ratings] = place_detail_data['result']['user_ratings_total'] || 0
        result[:price_level] = place_detail_data['result']['price_level']

        result
      else
        puts "詳細情報が見つかりませんでした。"
        nil
      end
    end

    def gourmet_reference_data(row)
      gourmet = Gourmet.find_by(name: row['グルメ名'])
      if gourmet.present?
        gourmet
      else
        puts "グルメが見つかりませんでした: #{row['グルメ名']}"
        return nil
      end
    end

    csv_file = 'lib/shops.csv'

    CSV.foreach(csv_file, headers: true) do |row|
      shop_data = get_detail_data(row)
      gourmet = gourmet_reference_data(row)
      if shop_data
        shop = Shop.create!(shop_data)
        ShopGourmet.create!(shop: shop, gourmet: gourmet)
        puts "Shopを保存しました: #{row['店名']}"
        puts "----------"
      else
        puts "Shopの保存に失敗しました: #{row['店名']}"
      end
    end
  end
end
