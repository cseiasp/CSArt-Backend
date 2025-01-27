Rails.application.routes.draw do
  resources :auctions
  resources :sales
  resources :users
  resources :paintings
  post "/charge", to: "sales#charge"
  get "/winnings", to: "sales#winnings"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
