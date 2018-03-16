Rails.application.routes.draw do
  use_doorkeeper
  devise_for :users
  authenticate :user do
    resources :users
    resources :items  
  end
  root to: "items#index" 
end
