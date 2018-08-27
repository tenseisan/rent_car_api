class Api::V1::RentalCarsController < ApplicationController
  before_action :set_user, only: [:create]

  def create
    @rent_car = @user.rental_car.new(car_rental_params)
    if @rent_car.save
      render json: @rent_car, status: :created
    else
      render json: @rent_car.errors, status: :unprocessable_entity
    end
  end

  def search
    @free_cars = FindCars.new(Car.all).call(params)
    render json: @free_cars
  end

  private

  def set_user
    @user = current_api_v1_user
  end

  def car_rental_params
    params.require(:rental_car).permit(:car_id, :starts_at, :ends_at)
  end
end
