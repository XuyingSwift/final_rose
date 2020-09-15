Rails.application.routes.draw do

  root 'static_pages#home'
  get '/home', to: 'static_pages#home'
  get '/about', to: 'static_pages#about'
  get '/contact', to: 'static_pages#contact'
  get '/signup', to: 'users#new'
  get '/win_a_rose', to: 'roses#new'

  resources :users
  resources :roses
end
