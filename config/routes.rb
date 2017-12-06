Rails.application.routes.draw do

  root 'static_pages#home'

  get 'login', to: redirect('/auth/google_oauth2'), as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'
  get 'auth/:provider/callback', to: 'sessions#create'
  get 'auth/failure', to: redirect('/')

  resources :presentations
  resources :polls
  resources :items

end
