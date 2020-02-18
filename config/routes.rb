Rails.application.routes.draw do
  get "/login", to: "sessions#create"
  resources :contacts
  resources :journals
  resources :jobs
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
