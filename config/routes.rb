Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'pages#home'
  get 'search',     to: 'skills#search'
  get 'skills',     to: 'skills#index'

  # signup flow
  get 'signup',     to: 'users#new'
  post 'signup',    to: 'users#create'

  # login flow
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  resources :users, only: [:index, :show]
end
