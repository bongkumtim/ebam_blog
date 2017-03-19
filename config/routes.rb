Rails.application.routes.draw do
  
  devise_for :users
  resources :posts
  root 'posts#index'

  get '/melab' => "posts#melab"
  get '/web' => "posts#web"
  get '/fb' => "posts#fb"
end
