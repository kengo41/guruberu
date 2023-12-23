class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  after_create :create_initial_list

  has_many :bookmark_lists, dependent: :destroy

  validates :name, presence: true, length: { maximum: 255 }

  private

  def create_initial_list
    bookmark_lists.create(name: 'お気に入り')
  end
end
