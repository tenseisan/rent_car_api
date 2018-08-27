class RentalCarSerializer < ActiveModel::Serializer
  belongs_to :car
  attributes :starts_at, :ends_at, :total_price
end
