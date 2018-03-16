Rails.application.routes.draw do
  use_doorkeeper
  devise_for :users
  authenticate :user do
    resources :users
    resources :items
  end

  namespace :api do
    get 'user', to: 'users#show'
    get 'user/update', to: 'users#update'
  end

  root to: "items#index"
end
