Infinity::Application.routes.draw do
  resources :country_pictures

  resources :countries

  resources :destination_pictures

  resources :press_releases

  resources :carts

  resources :prices

  resources :extensions

  resources :travels

  resources :posts

  resources :members

  resources :destinations

  resources :milestones

  devise_for :users

  devise_for :admins

  resources :slides

  get "home/index"

  root :to => "home#index"

end
