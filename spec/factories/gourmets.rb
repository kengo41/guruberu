FactoryBot.define do
  factory :gourmet do
    sequence(:name) { |n| "name_#{n}" }
    sequence(:description) { |n| "description_#{n}" }
    sequence(:image) { |n| "image_#{n}" }
    association :prefecture
  end
end
