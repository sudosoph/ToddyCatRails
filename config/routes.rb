ToddyCatRails::Application.routes.draw do

  # Sign in/out
  get 'login' => 'session#new'
  post 'login' => 'session#create'
  delete 'logout' => 'session#destroy'
  get 'logout' => 'session#destroy'

  # Registration
  get 'register/:code' => 'registration#new'
  post 'register/:code' => 'registration#create'

  # Reset
  get 'reset/:code' => 'password#edit'
  put 'reset/:code' => 'password#update'
  patch 'reset/:code' => 'password#update'

  get 'privacy' => 'site#privacy'
  get 'terms' => 'site#terms'

  root 'site#index'
end
