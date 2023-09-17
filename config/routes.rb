Rails.application.routes.draw do
  root to: 'static_pages#top'
  devise_for :users
  resource :my_page, only: %i[show edit update]
end
