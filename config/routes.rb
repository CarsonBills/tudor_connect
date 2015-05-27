Rails.application.routes.draw do

  root "pages#landing"

  resources :users, :only => [:show, :new, :create, :destroy]

  resources :sessions, :only => [:create]

  resources :buildings

  resources :posts

  get '/login' => "sessions#new"

  delete '/sessions' => 'sessions#destroy'
end
