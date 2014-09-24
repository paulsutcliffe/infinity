Infinity::Application.routes.draw do

  resources :interests


  mount Ckeditor::Engine => '/ckeditor'

  resources :questions
  resources :bookings
  resources :partners
  resources :healths
  resources :question_forms
  resources :abouts, :path => I18n.t('abouts.url') do
    get 'work_with_us'        => "abouts#work", :on => :collection
    get 'history'             => "abouts#history", :on => :collection
    get 'milestones'          => "abouts#milestones", :on => :collection
    get 'global_proyection'   => "abouts#global_proyection", :on => :collection
    get 'know_our_staff'      => "abouts#staff", :on => :collection
  end
  match '/destinations/search-results' => 'destinations#search_results', via: :get, as: 'search_results'
  resources :destinations do
    resources :countries do
      resources :country_pictures
    end
    resources :destination_pictures
  end
  resources :countries do
    resources :travels
  end
  resources :offer_seasons, :path => I18n.t('offer_seasons.url') do
    resources :travels, :path => I18n.t('travels.url')  do
      resources :itineraries
      resources :prices
      resources :extensions
      resources :hotels
    end
  end
  resources :offers, :path => I18n.t('offers.url')
  resources :packs, :path => I18n.t('packs.url')
  resources :posts, :path => I18n.t('posts.url') do
  # match 'posts', :on => :collection
  # match "/:id" => 'posts#show', :on => :collection, :as => :news_and_events
    get 'news_and_events' => 'posts#news_and_events', :on => :collection
    get 'press_releases' => 'posts#press_releases', :on => :collection
  end
  resources :press_releases
  devise_for :users
  match '/terms' => 'abouts#terms', via: :get
  resources :users
  resources :abouts
  resources :applicants
  resources :testimonies
  resources :carts
  resources :travels
  resources :members
  resources :milestones
  devise_for :admins
  resources :slides
  get "home/index"
  root :to => "home#index"
  #root :to => "maintenance#index"

end
