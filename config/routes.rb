Rails.application.routes.draw do
  resources :ingredients
  resources :recipes
  devise_for :users
  root "hello#index"
end
