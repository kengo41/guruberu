Rails.application.routes.draw do
  root to: 'static_pages#top'
  get 'terms', to: 'static_pages#terms'
  get 'privacy_policy', to: 'static_pages#privacy_policy'
  get 'home', to: 'shops#home'
  get 'gourmets', to: 'gourmets#index'
  devise_for :users
  resource :my_page, only: %i[show edit update]
  resources :shops, only: %i[show] do
    resources :reviews, only: %i[new create edit update destroy], shallow: true
  end
  resources :gourmets, only: %i[show]
  resources :bookmark_lists
  resources :bookmarks, only: %i[create destroy]
end
