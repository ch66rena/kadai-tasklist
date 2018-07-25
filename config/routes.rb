Rails.application.routes.draw do
  get 'task/index'
  get 'task/show'
  get 'task/new'
  get 'task/create'
  get 'toppages/index'
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'
  root to: 'toppages#index'
  
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  get 'signup', to: 'tasks#new'
  resources :tasks, only: [:index, :show, :new, :create]
end
