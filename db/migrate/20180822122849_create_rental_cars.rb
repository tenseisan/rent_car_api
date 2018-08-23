class CreateRentalCars < ActiveRecord::Migration[5.2]
  def change
    create_table :rental_cars do |t|
      t.date :time_start
      t.date :time_end

      t.timestamps
    end
  end
end
