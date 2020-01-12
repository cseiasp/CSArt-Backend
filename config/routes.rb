Rails.application.routes.draw do
  resources :auctions
  resources :sales
  resources :users
  resources :paintings
  post "/charge", to: "sales#charge"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
