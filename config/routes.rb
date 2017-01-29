Rails.application.routes.draw do
  resources :requirements
  resources :ranks
  resources :advancements
  get 'view' => 'advancements#view'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "home#index"
end
