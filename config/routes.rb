Rails.application.routes.draw do
  root "pages#landing"

  resources :users

  get "/reset" => "users#reset", as: "reset_password"

  post "/forgot_password" => "users#forgot_password"

  resources :sessions, :only => [:create]

  resources :buildings

  resources :posts

  get "/buildings/:id/admin" => "buildings#admin", as: "building_admin"

  get '/login' => "sessions#new"

  delete '/sessions' => 'sessions#destroy'
end
