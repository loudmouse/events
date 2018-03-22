Rails.application.routes.draw do
  get 'events/new'

  get 'events/create'

  get 'events/show'

  get 'events/index'

  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  resources :users

end
