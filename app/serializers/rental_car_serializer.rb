class RentalCarSerializer < ActiveModel::Serializer
  attributes :id, :starts_at, :ends_at, :total_price
end
