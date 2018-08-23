class CreateCars < ActiveRecord::Migration[5.2]
  def change
    create_table :cars do |t|
      t.string :car_type
      t.string :color
      t.integer :year
      t.string :brand
      t.string :model
      t.float :price

      t.timestamps
    end
  end
end
