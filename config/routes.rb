Infinity::Application.routes.draw do


  scope() do
    resources :abouts, :path => 'about-us' do
      match 'about-us/history' => "about-us#history"
    end
  end

  resources :abouts
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
