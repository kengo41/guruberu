class Prefecture < ApplicationRecord
  has_many :gourmets, dependent: :destroy

  validates :name, presence: true
end
