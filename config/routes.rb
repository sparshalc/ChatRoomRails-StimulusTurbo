Rails.application.routes.draw do
  root "rooms#index"
  resources :rooms do
    resources :messages
  end
  devise_for :users
end
