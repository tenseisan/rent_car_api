class AddTotalPriceToRentalCars < ActiveRecord::Migration[5.2]
  def change
    add_column :rental_cars, :total_price, :float
  end
end
