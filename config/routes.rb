Rails.application.routes.draw do
  devise_for :users
  root to: "home#index"

  get '/petition', to: 'home#petition'
  get '/about', to: 'home#about'
  get '/faq', to: 'home#faq'
  get '/admin', to: 'admin#index'

  resources :organizations
  resources :articles
  resources :files
end
