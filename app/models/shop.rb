class Shop < ApplicationRecord
  has_many :shop_gourmets, dependent: :destroy
  has_many :gourmets, through: :shop_gourmets, dependent: :destroy
  has_many :bookmarks
  has_many :bookmark_lists, through: :bookmarks, dependent: :destroy
  has_many :reviews, dependent: :destroy

  validates :name, presence: true
  validates :latitude, presence: true
  validates :longitude, presence: true
  validates :place_id, presence: true

  enum price_level: { 無料: 0, 安価: 1 , お手頃: 2, 高級: 3, とても高級: 4 }

  def bookmark_count
    bookmarks.count
  end

  def self.find_or_create_from_api_data(place_data, gourmet)
    shop = find_or_initialize_by(place_id: place_data['place_id'])

    gourmet = Gourmet.find_by(name: gourmet)
    shop.gourmets << gourmet unless shop.gourmets.exists?(gourmet.id)

    return shop if shop.persisted?

    details = fetch_place_details(place_data['place_id'])

    if details['photos'].present?
      photo = details['photos'].first
      photo_url = "https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=#{photo['photo_reference']}&key=#{ENV.fetch('API_KEY', nil)}"
    end

    shop.attributes = {
      name: details['name'],
      address: details['formatted_address'].sub(/\A[^ ]+/, ''),
      phone_number: details['formatted_phone_number'],
      opening_hours: details['opening_hours'] ? details['opening_hours']['weekday_text'].join("\n") : "N/A",
      image: photo_url,
      website: details['website'],
      place_id: details['place_id'],
      latitude: details['geometry']['location']['lat'],
      longitude: details['geometry']['location']['lng'],
      rating: details['rating'],
      total_ratings: details['user_ratings_total'] || 0,
      price_level: details['price_level']
    }
    shop.save
    shop
  end

  def self.fetch_place_details(place_id)
    base_url = "https://maps.googleapis.com/maps/api/place/details/json"
    parameters = {
      place_id: place_id,
      fields: 'name,formatted_address,formatted_phone_number,opening_hours,photos,website,place_id,geometry,rating,user_ratings_total,price_level',
      key: ENV.fetch('API_KEY', nil),
      language: 'ja'
    }
    response = Net::HTTP.get(URI("#{base_url}?#{parameters.to_query}"))
    JSON.parse(response)['result']
  end

  def distance_to(current_latitude, current_longitude)
    Geocoder::Calculations.distance_between([current_latitude, current_longitude], [latitude, longitude])
  end
end
