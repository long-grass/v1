Rails.application.routes.draw do
  resources :event_items
  resources :event_users
  resources :items
  resources :events,   :path => :parties, :as => :parties
  resources :circle_users
  resources :circles
  resources :comments
  resources :users
  resources :locations
  # resources :events
  resources :events do
    resources :event_items, only: [:update]
  end
  resources :coris
  resources :posts
  get '/items' => 'event_items#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
