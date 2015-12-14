Rails.application.routes.draw do
  root to: "home#index"

  get '/petition', to: 'home#petition'

end
