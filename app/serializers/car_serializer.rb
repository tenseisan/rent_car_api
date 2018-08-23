class CarSerializer < ActiveModel::Serializer
  attributes :id, :color, :model, :car_type, :price, :brand
end