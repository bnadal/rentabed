Rails.application.routes.draw do
  devise_for :users
  root to: 'ads#home'
  get 'bookings/confirm/:id', to: 'bookings#confirm', as: :confirm
  #get 'ads/myads', to: 'users#myads', as: :myads
  resources :ads, only: [:index, :show, :create, :new, :destroy]
  resources :users, only: [:index, :show, :create, :new, :destroy]
  resources :bookings, only: [:index, :show, :create, :new, :destroy]

end
