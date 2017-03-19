Rails.application.routes.draw do
  
  resources :posts
  root 'posts#index'

  get '/melab' => "posts#melab"
  get '/web' => "posts#web"
  get '/fb' => "posts#fb"
end
