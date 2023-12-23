class Gourmet < ApplicationRecord
  mount_uploader :image, ImagesUploader

  belongs_to :prefecture
  has_many :shop_gourmets, dependent: :destroy
  has_many :shops, through: :shop_gourmets, dependent: :destroy

  validates :name, presence: true
end
