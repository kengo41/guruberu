class Bookmark < ApplicationRecord
  belongs_to :bookmark_list
  belongs_to :shop

  validates :bookmark_list_id, uniqueness: { scope: :shop_id }
end
