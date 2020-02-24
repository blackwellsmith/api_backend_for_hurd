Rails.application.routes.draw do
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
  get "/get_current_user", to: "sessions#get_current_user"
  post "/signup", to: "users#create"
  post "/journalentry" , to: "journals#create"
  get "/journalindex" , to: "journals#index"
  post "/jobgoal" , to: "jobs#create"
  resources :contacts
  resources :journals
  resources :jobs
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
