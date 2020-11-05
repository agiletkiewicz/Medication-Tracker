Rails.application.routes.draw do
 get '/' => 'sessions#welcome'
 get '/login' => 'sessions#new'
 post '/login' => 'sessions#create'
 get '/signup' => 'users#new'
 post '/signup' => 'users#create'
 get '/auth/:provider/callback' => 'sessions#omniauth'
  resources :illness
  resources :medications
  resources :patients
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
