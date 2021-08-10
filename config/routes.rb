Rails.application.routes.draw do
  get 'home/index'
  get 'demo/index_temp'
  devise_for :users
  resources :projects
  get 'home/me'
  root 'home#index'
end
