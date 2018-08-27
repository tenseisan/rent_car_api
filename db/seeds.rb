10.times do
  Car.create!(
  car_type: Faker::Vehicle.car_type,
  color: Faker::Vehicle.color,
  year: Faker::Vehicle.year,
  brand: 'Toyota',
  model: Faker::Vehicle.model('Toyota'),
  price: Faker::Number.decimal(2)
  )
 User.create(
  email: Faker::SiliconValley.email,
  password: 123123
  )
end


User.all.each do |user|
  1.times do
    RentalCar.create!(
    starts_at: Time.now + rand(1..6).days,
    ends_at: Time.now + rand(20..30).days,
    user_id: user.id,
    car_id: rand(1..9)
    )
  end
end