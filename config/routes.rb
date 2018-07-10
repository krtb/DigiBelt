Rails.application.routes.draw do
  resources :techs
  resources :tech_stacks
  resources :projects
  resources :users
  resources :sessions, only: [:new, :create]
  get '/', to: 'users#welcome', as: 'welcome'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
