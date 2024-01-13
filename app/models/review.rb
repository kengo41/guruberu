class Review < ApplicationRecord
  belongs_to :user
  belongs_to :shop

  validates :rating, presence: true
  validates :content, length: { maximum: 155 }
  validates :user_id, uniqueness: { scope: :shop_id }

  enum rating: { one: 1, two: 2, three: 3, four: 4, five: 5 }

  def rating_as_number
    if rating == 'one'
      1
    elsif rating == 'two'
      2
    elsif rating == 'three'
      3
    elsif rating == 'four'
      4
    elsif rating == 'five'
      5
    end
  end
end
