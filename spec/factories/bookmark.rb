FactoryBot.define do
  factory :bookmark do
    association :bookmark_list
    association :shop
  end
end
