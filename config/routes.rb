Rails.application.routes.draw do
  root to: 'static_pages#top'
  get 'terms', to: 'static_pages#terms'
  get 'privacy_policy', to: 'static_pages#privacy_policy'
  get 'home', to: 'shops#home'
  devise_for :users
  resource :my_page, only: %i[show edit update]
  resources :shops, only: %i[show]
end
