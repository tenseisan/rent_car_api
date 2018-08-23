10.times do
  Car.create!(
  car_type: Faker::Vehicle.car_type,
  color: Faker::Vehicle.color,
  year: Faker::Vehicle.year,
  brand: 'Toyota',
  model: Faker::Vehicle.model('Toyota'),
  price: Faker::Number.decimal(2)
  )
end