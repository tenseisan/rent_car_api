Rails.application.routes.draw do
  get 'cars/index'
  namespace :api do
    namespace :v1 do
      devise_for :users do

      end
    end
  end
end