class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :bookmark_lists, dependent: :destroy

  validates :name, presence: true, length: { maximum: 255 }
end
