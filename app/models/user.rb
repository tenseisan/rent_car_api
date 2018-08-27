class User < ApplicationRecord
  acts_as_token_authenticatable

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :rental_car, dependent: :destroy

  validates :email, uniqueness: true

  def reset_authentication_token!
    self.authentication_token = nil
    save
    authentication_token
  end
end
