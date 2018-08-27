class Api::V1::UsersController < ApplicationController
  before_action :set_user

  def rental_history
    @rent_history = @user.rental_car

    render json: @rent_history
  end

  private

  def set_user
    @user = current_api_v1_user
  end
end
