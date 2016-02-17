Rails.application.routes.draw do
  get "/posts" => "posts#index"
  post "/posts" => "posts#create"
  get "/posts/:id" => "posts#show"
  patch "/posts/:id" => "posts#update"
  delete "posts/:id" => "posts#destroy"
end
