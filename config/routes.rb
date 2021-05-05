Rails.application.routes.draw do
  resources :fields
  resources :books
  resources :scholars
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
