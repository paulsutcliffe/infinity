Infinity::Application.routes.draw do


  resources :testimonies

  scope() do

    resources :abouts, :path => I18n.t('abouts.url') do
      get 'work_with_us'        => "abouts#work", :on => :collection
      get 'history'             => "abouts#history", :on => :collection
      get 'awards'              => "abouts#awards", :on => :collection
      get 'global_proyection'   => "abouts#global_proyection", :on => :collection
      get 'know_our_staff'      => "abouts#staff", :on => :collection
    end

    resources :posts, :path => I18n.t('posts.url') do
      get 'news_and_events'   => "posts#news_and_events", :on => :collection
      get 'press_releases' => "posts#press_releases", :on => :collection
    end
  end

  devise_for :users, 
               :controllers => { :registrations => "users/registrations",
                                 :confirmations => "users/confirmations",
                                 :sessions => 'devise/sessions'},
             :skip => [:sessions] do
    get '/sign_in'   => "devise/sessions#new",       :as => :new_user_session
    post '/sign_in'  => 'devise/sessions#create',    :as => :user_session
    get '/sign_out'  => 'devise/sessions#destroy',   :as => :destroy_user_session
    get '/sign_up'   => "users/registrations#new",   :as => :new_user_registration
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


  resources :members

  resources :destinations

  resources :milestones


  devise_for :admins

  resources :slides

  get "home/index"

  root :to => "home#index"

end
