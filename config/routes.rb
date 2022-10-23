Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  ## exercises
  resources :exercises
  get "exercises" => "exercises#index"
  ## users routes
  resources :users
  
  get "posts" => "users#index"

  ## workouts routes
  resources :workouts

  ## workout details routes
  resources :workout_details


  ## excercises routes
  resources :workouts 
  

  ## sessions routes
  get "/login" => "sessions#new"
  post "/sessions" => "sessions#create"
  get "/logout" => "sessions#destroy"
  get "/signup" => "users#new"

  ## excercisecategory
  resources :exercise_categories
end
