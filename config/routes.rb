Rails.application.routes.draw do

  resources :scholars, only: [:show] do
    resources :books, only: [:show, :index, :new]
  end

  resources :fields
  resources :books
  resources :scholars
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
