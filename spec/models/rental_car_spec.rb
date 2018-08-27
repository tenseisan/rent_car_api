require 'rails_helper'

RSpec.describe RentalCar, type: :model do
  let(:user) { create(:user) }
  let(:car) { create(:car) }
  let(:rental_car) { create(:rental_car, user: user, car: car) }

  describe 'validates' do
    context 'associations' do
      it { is_expected.to belong_to(:car) }
      it { is_expected.to belong_to(:user) }
    end
  end
end
