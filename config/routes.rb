Rails.application.routes.draw do
  resources :sales
  resources :users
  resources :paintings
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end