Infinity::Application.routes.draw do
  resources :milestones

  devise_for :users

  devise_for :admins

  resources :slides

  get "home/index"

  root :to => "home#index"

end
