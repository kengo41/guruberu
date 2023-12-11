class Shop < ApplicationRecord
  has_many :shop_gourmets, dependent: :destroy
  has_many :gourmets, through: :shop_gourmets, dependent: :destroy

  validates :name, presence: true
  validates :latitude, presence: true
  validates :longitude, presence: true
  validates :place_id, presence: true
end
