class Food < ApplicationRecord
  validates :name, presence: true
  validates :price, numericality: { only_integer: true }
  validates :rating, numericality: { only_integer: true, greater_than_or_equal_to: 0, less_than_or_equal_to: 5 }
  belongs_to :restaurant
end
