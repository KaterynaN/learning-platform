Rails.application.routes.draw do
  devise_for :users
  resources :courses
  resources :users, only: [:index]
  get 'static_pages/langing_page'
  root 'static_pages#landing_page'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
