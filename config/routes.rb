Rails.application.routes.draw do
  resources :grams

  get '/auth/:provider/callback', to: 'sessions#create'
  get '/auth/instagram', to: 'sessions#create', as: 'login'
  get 'friends', to: 'grams#friends'
  get '/logout', to: 'sessions#destroy'

  get '/grams', to: 'grams#index'

  root to: "grams#index"

end
