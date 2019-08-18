class User < ApplicationRecord
  has_secure_password
  validates :email, presence: true, uniqueness: true

  has_many :friendships
  has_many :friends, through: :friendships
end
