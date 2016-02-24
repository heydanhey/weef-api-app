Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do  
      get "/posts" => "posts#index"
      post "/posts" => "posts#create"
      get "/posts/:id" => "posts#show"
      patch "/posts/:id" => "posts#update"
      delete "posts/:id" => "posts#destroy"
    end
  end
end
