class Bookmark < ApplicationRecord
  belongs_to :bookmark_list
  belongs_to :shop

  validates :bookmark_list_id, uniqueness: { scope: :shop_id }

  def self.user_bookmarked_shop?(user, shop)
    user.present? && find_by(shop: shop, bookmark_list: user.bookmark_lists)
  end
end
