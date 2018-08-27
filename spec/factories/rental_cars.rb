FactoryBot.define do
  factory :rental_car do
    user
    car

    starts_at { rand(1..5).days.from_now }
    ends_at { rand(7..21).days.from_now }
  end
end
