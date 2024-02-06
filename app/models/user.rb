class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  mount_uploader :icon, IconUploader

  after_create :create_initial_list

  has_many :bookmark_lists, dependent: :destroy
  has_many :reviews, dependent: :destroy

  validates :name, presence: true, length: { maximum: 255 }

  def create_initial_list
    bookmark_lists.create(name: 'お気に入り')
  end

  def own?(object)
    id == object.user_id
  end
end
