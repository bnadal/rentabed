Rails.application.routes.draw do
  devise_for :users
  root to: 'ads#home'
  #get 'bookings/mybookings', to: 'users#mybookings', as: :mybookings
  #get 'ads/myads', to: 'users#myads', as: :myads
  resources :ads, only: [:index, :show, :create, :new, :destroy] do
    resources :bookings, only: [:create, :new]
  end
  resources :users, only: [:index, :show, :create, :new, :destroy]
  resources :bookings, only: [:index, :show, :destroy]
end
