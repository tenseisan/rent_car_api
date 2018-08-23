Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      devise_for :users, defaults: { format: :json },
                 controllers: {sessions: 'api/v1/sessions',
                                       registrations: 'api/v1/registrations'}
      resources :cars, only: [:index]
    end
  end
end