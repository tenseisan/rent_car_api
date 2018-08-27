class User < ApplicationRecord

  devise :database_authenticatable, :registerable,
         :validatable, :token_authenticatable

  has_many :rental_car, dependent: :destroy
  has_many :authentication_tokens
  validates :email, uniqueness: true
end
