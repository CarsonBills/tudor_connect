Rails.application.routes.draw do

  resources :posts
  root "pages#landing"

  resources :users, :only => [:show, :new, :create, :destroy]

  resources :sessions, :only => [:create]

  resources :buildings

  resources :posts

  get "/buildings/:id/admin" => "buildings#admin", as: "building_admin"

  get '/login' => "sessions#new"

  delete '/sessions' => 'sessions#destroy'
end
