class Api::V1::RegistrationsController < Devise::RegistrationsController
  def create
    user = User.new(user_params)
    if user.save
      render json: user, status: :created # response.message - статус код 201
    else
      render json: user.errors, status: :unprocessable_entity # response.message - статус код 422
    end
  end

  private

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end
end
