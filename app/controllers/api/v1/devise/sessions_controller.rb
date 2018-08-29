class Api::V1::Devise::SessionsController < Devise::SessionsController
  before_action :ensure_params_exist

  def create
    user = User.find_by(email: params[:user][:email])

    if user.present? && user.valid_password?(params[:user][:password])
      sign_in user
      token = Tiddle.create_and_return_token(user, request, expires_in: 3.hours)

      render json: { authentication_token: token }, status: :ok
    else
      render status: :unauthorized
    end
  end

  private

  def ensure_params_exist
    render status: :unprocessable_entity if params[:user].blank?
  end
end
