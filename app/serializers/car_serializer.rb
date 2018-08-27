class CarSerializer < ActiveModel::Serializer
  attributes :id, :car_type, :color, :year, :price, :brand, :model
end
