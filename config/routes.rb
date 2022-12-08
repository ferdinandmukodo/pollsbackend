Rails.application.routes.draw do
  resources :serializers
  post "/signup", to: "users#create"
  get "me", to: "users#show"
  post "login", to: "sessions#create"
  delete "logout", to: "sessions#destroy"
  resources :polls, only: [:index, :show] do
    resources :questions, only: [:create, :destroy, :update, :index]
  end
end