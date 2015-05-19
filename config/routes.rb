Rails.application.routes.draw do

  root "pages#sign_in"

  resources :users, :only => [:show, :new, :create, :destroy]

  resources :sessions, :only => [:create]

  get '/login' => "sessions#new"

  delete '/sessions' => 'sessions#destroy'
end
