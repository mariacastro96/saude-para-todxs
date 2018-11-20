Rails.application.routes.draw do

  get '/solim', to: 'pages#solim'
  get '/project', to: 'pages#project'
  get '/question', to: 'pages#question'

  namespace :admin do
      resources :users
      resources :contacts
      resources :fields
      resources :languages
      resources :links
      resources :questions
      resources :statements
      resources :studies
      resources :variables

      root to: "users#index"
    end
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :contacts

  resources :links

  resources :questions

  resources :statements

  resources :studies

  resources :fields

  resources :variables

end
