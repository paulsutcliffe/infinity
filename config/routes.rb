Infinity::Application.routes.draw do
  devise_for :users

  devise_for :admins

  resources :slides

  get "home/index"

  root :to => "home#index"

end
