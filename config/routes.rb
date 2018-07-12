Rails.application.routes.draw do
  resources :projects
  resources :users
  resources :sessions, only: [:new, :create]
  get '/', to: 'users#welcome', as: 'welcome'
  get '/info', to: 'users#info', as: 'info'
  resources :languages, only: [:show]
  resources :frameworks, only: [:show]
  resources :databases, only: [:show]
  get '/logout', to: 'sessions#destroy', as: 'logout'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
