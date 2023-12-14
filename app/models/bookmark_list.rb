class BookmarkList < ApplicationRecord
  belongs_to :user
  has_many :bookmarks, dependent: :destroy
  has_many :shops, through: :bookmarks

  validates :name, presence: true, length: { maximum: 40 }
end
