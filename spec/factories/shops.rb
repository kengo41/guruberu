FactoryBot.define do
  factory :shop do
    sequence(:name) { |n| "name_#{n}" }
    sequence(:latitude) { |n| "latitude_#{n}" }
    sequence(:longitude) { |n| "longitude_#{n}" }
    sequence(:place_id) { |n| "place_id_#{n}" }
  end
end
