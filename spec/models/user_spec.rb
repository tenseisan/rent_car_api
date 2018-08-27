require 'rails_helper'

RSpec.describe User, type: :model do
  context 'validates' do
    FactoryBot.create(:user)

    context 'presence' do
      it { should validate_presence_of :email }
    end

    context 'associations' do
      it { is_expected.to have_many(:rental_car) }
    end
  end
end
