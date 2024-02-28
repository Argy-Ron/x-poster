Rails.application.routes.draw do
  devise_for :users
  #マイページへのルーティング
  resources :users, only: [:show]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  # get "up" => "rails/health#show", as: :rails_health_check
  root 'tweets#index'
  #resources :tweets
  get 'hello/index' => 'hello#index'
  get 'hello/link' => 'hello#link'
  get 'tweets' => 'tweets#index'
  get 'tweets/new' => 'tweets#new'
  post 'tweets' => 'tweets#create'
  get 'tweets/:id' => 'tweets#show', as: 'tweet'

  # Defines the root path route ("/")
  # root "posts#index"
end
