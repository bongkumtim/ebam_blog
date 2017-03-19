Rails.application.routes.draw do
  
  devise_for :users

  resources :posts do
  	resources :comments
  end

  root 'posts#index'

  get '/melab' => "posts#melab"
  get '/web' => "posts#web"
  get '/fb' => "posts#fb"
end
