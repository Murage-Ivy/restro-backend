class Restaurant < ApplicationRecord
  validates :name, presence: true
  validates :description, presence: true, length: { minimum: 50 }
  validates :rating, numericality: { only_integer: true, greater_than_or_equal_to: 0, less_than_or_equal_to: 5 }
  validates :image_url, presence: true
  has_many :reviews, dependent: :destroy
  has_many :foods
end
