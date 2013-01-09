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
    
    
    resources :destinations do
      resources :countries do
        resources :country_pictures
      end
      resources :destination_pictures
    end


    # maintenance
    get 'maintenance' => "maintenance#index"     

    # offers


    # offer_season has_many :offers
    resources :offer_seasons, :path => I18n.t('offer_seasons.url') do
      resources :offers, :path => I18n.t('offers.url') 
        #get 'new_item' => "offers#new_item", :on => :collection
    end
    
    resources :offers, :path => I18n.t('offers.url') 

    # packs
    resources :packs, :path => I18n.t('packs.url')


    # posts has_many :news_and_events :press_releases
    resources :posts, :path => I18n.t('posts.url')

    resources :press_releases 



  end #scope

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




  resources :carts

  resources :prices

  resources :extensions

  resources :travels


  resources :members


  resources :milestones


  devise_for :admins

  resources :slides

  get "home/index"

  root :to => "home#index"

end
