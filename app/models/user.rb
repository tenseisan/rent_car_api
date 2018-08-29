class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :validatable, :token_authenticatable

  has_many :rental_car
  has_many :authentication_tokens, dependent: :destroy
end
