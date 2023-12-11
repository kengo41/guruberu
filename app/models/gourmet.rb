class Gourmet < ApplicationRecord
  belongs_to :prefecture
  has_many :shop_gourmets, dependent: :destroy
  has_many :shops, through: :shop_gourmets, dependent: :destroy

  validates :name, presence: true
end
