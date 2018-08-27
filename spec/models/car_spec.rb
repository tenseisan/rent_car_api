require 'rails_helper'

RSpec.describe Car, type: :model do
  context 'associations' do
    it { is_expected.to have_many(:rental_cars) }
  end
end
