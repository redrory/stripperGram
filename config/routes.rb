Rails.application.routes.draw do
  resources :grams

  get '/auth/:provider/callback', to: 'sessions#create'
  get '/auth/instagram', to: 'sessions#create', as: 'login'
  get 'friends', to: 'grams#friends'
  get 'home', to: 'grams#mvp'
  get '/logout', to: 'sessions#destroy'

  get '/grams', to: 'grams#index'
  get '/about', to: 'grams#about'

  # root to: "grams#mvp"
  root to: "grams#index"

end
