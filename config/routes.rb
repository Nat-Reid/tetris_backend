Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :scores
      resources :users, only: [:create, :show]
      # get '/profile', to: 'users#profile'
    end
  end
end
