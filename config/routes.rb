Rails.application.routes.draw do
  resources :friend_requests
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
  #   get "/photos" => "photos#index"
    get "/playdates" => "playdates#index"
    get "/playdates/:id" => "playdates#show"

    post "/users" => "users#create"
    post "/sessions" => "sessions#create"

    get "/friendships" => "friendships#index"
    get "/notfriends" => "friendships#notfriends"
  end
end
