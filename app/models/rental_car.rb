class RentalCar < ApplicationRecord
  belongs_to :car
  belongs_to :user

  validates :starts_at, :ends_at, :car_id, :user_id, presence: true
  validates :starts_at, :ends_at, overlap: true

  validate :right_date
  validate :minimum_maximum_rent
  validate :one_auto_per_client

  before_save :set_total_price

  private

  def minimum_maximum_rent
    errors.add(:base, 'Wrong number of days') if
    (ends_at - starts_at).to_i < 1 || (ends_at - starts_at).to_i > 30
  end

  def right_date
    errors.add(:base, 'Wrong date params') if ends_at < starts_at
  end

  def one_auto_per_client
    errors.add(:base, 'You have another car in rent') if
       self.class.where(user_id: user_id).last.present? &&
       self.class.where(user_id: user_id).last.ends_at > Time.now
  end

  def set_total_price
    self.total_price = ((ends_at - starts_at) * car.price).round(2)
  end
end
