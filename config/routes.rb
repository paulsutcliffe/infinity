Infinity::Application.routes.draw do


  resources :testimonies

  scope() do
    resources :abouts, :path => I18n.t('abouts.url') do
      get 'history' => "abouts#history", :on => :collection
      get 'global_proyection' => "abouts#global_proyection", :on => :collection
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
