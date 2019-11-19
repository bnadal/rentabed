Rails.application.routes.draw do
  devise_for :users

  root to: 'ads#home'
  get 'ads/myads', to: 'users#myads', as: :myads
  resources :ads, only: [:index, :show, :create, :new, :destroy]

end
