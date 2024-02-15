FactoryBot.define do
  factory :prefecture do
    sequence(:name) { |n| "name_#{n}" }
  end
end
