Rails.application.routes.draw do
  get 'home/index'
  devise_for :users
  resources :projects
  get 'home/me'
  root 'home#index'

  # root 'projects#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
