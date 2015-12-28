Rails.application.routes.draw do
  root to: "home#index"

  get '/petition', to: 'home#petition'
  get '/about', to: 'home#about'
  get '/faq', to: 'home#faq'

end
