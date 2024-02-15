FactoryBot.define do
  factory :bookmark_list do
    sequence(:name) { |n| "list_#{n}" }
    association :user
  end
end
