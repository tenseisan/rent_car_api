class Api::V1::SessionsController < Devise::SessionsController
  before_action :ensure_params_exist

  def create
    user = User.find_by(email: params[:user][:email])
    return invalid_login_attempt unless user

    if user.valid_password?(params[:user][:password])
      sign_in user

      render status: :ok
    else
      render status: :unauthorized
    end
  end

  private

  def ensure_params_exist
    render status: :unprocessable_entity if params[:user].blank?
  end

  def invalid_login_attempt
    render status: :unauthorized
  end
end
