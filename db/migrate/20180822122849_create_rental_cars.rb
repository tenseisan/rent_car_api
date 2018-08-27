class CreateRentalCars < ActiveRecord::Migration[5.2]
  def change
    create_table :rental_cars do |t|
      t.date :starts_at
      t.date :ends_at

      t.timestamps
    end
  end
end
