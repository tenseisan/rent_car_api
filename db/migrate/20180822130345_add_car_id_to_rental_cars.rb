class AddCarIdToRentalCars < ActiveRecord::Migration[5.2]
  def change
    add_column :rental_cars, :car_id, :integer
  end
end
