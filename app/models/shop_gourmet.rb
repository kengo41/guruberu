class ShopGourmet < ApplicationRecord
  belongs_to :shop
  belongs_to :gourmet

  validates :shop_id, uniqueness: { scope: :gourmet_id }
end
