class Review < ApplicationRecord
  belongs_to :user
  belongs_to :shop

  validates :rating, presence: true
  validates :content, length: { maximum: 155 }
  validates :user_id, uniqueness: { scope: :shop_id }
end
