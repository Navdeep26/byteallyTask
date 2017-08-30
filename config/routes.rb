Rails.application.routes.draw do
resources :tweets
get '/tweets' => 'tweets#index'
root 'sessions#show'
get "/auth/:provider/callback" => "sessions#create"
get "/signout" => "sessions#destroy"
end
