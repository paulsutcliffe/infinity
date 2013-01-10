Infinity::Application.routes.draw do






  resources :applicants

  resources :testimonies


    resources :abouts, :path => I18n.t('abouts.url') do
      get 'work_with_us'        => "abouts#work", :on => :collection
      get 'history'             => "abouts#history", :on => :collection
      get 'milestones'          => "abouts#milestones", :on => :collection
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


  devise_for :users
  
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
