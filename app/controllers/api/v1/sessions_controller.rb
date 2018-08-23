class Api::V1::SessionsController < Devise::SessionsController
  before_action :ensure_params_exist

  def create
    resource = User.find_by(email: params[:user][:email])
    return invalid_login_attempt unless resource

    if resource.valid_password?(params[:user][:password])
      sign_in(:user, resource)
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
