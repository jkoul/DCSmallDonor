Rails.application.routes.draw do
  devise_for :users
  root to: "home#index"

  get '/petition', to: 'home#petition'
  get '/about', to: 'home#about'
  get '/faq', to: 'home#faq'
  get '/resolution', to: 'home#resolution'
  get '/admin', to: 'admin#index'
  get '/signup', to: 'home#googleform'

  resources :organizations
  resources :articles
  resources :files
end
