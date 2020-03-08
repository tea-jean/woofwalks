Rails.application.routes.draw do
  root to: "services#index"
  resources :services
  devise_for :users
  get "walker/dashboard", to: "walker#dashboard"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
