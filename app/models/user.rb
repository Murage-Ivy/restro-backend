class User < ApplicationRecord
  has_secure_password
  validates :username, presence: true, uniqueness: true
  validates :password, length: { maximum: 8 }, presence: true
  validates :password_confirmation, presence: true, length: { maximum: 8 }
  has_many :reviews
end
