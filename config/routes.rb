Rails.application.routes.draw do
  namespace :api, constraints: { format: 'json' } do
    namespace :v1 do
      devise_for :users,
                 controllers: { sessions: 'api/v1/devise/sessions',
                                registrations: 'api/v1/devise/registrations' }

      resource :users, only: [:rental_history] do
        collection do
          get :rental_history
        end
      end
      resources :rental_cars, only: [:create, :search] do
        collection do
          get :search
        end
      end
    end
  end
end