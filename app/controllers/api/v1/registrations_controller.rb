class Api::V1::RegistrationsController < Devise::RegistrationsController

  def create
    user = User.new(user_params)
    if user.save
      render json: user, status: :created
    else
      render status: :unprocessable_entity
    end
  end

  private

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end
end
