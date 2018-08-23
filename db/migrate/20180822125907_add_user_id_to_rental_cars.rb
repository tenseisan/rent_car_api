class AddUserIdToRentalCars < ActiveRecord::Migration[5.2]
  def change
    add_column :rental_cars, :user_id, :integer
  end
end
