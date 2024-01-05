class Bookmark < ApplicationRecord
  belongs_to :bookmark_list
  belongs_to :shop

  validates :bookmark_list_id, uniqueness: { scope: :shop_id }

  def self.find_by_shop(shop)
    find_by(shop: shop)
  end
end
