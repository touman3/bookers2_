Rails.application.routes.draw do
  devise_for :users

  root to: "homes#top"
  get "home/about" => "homes#about", as: "about"
  post "homes/about" => "homes#about"

  resources :users, only: [:index, :show, :edit, :update, :patch]
  patch "users/:id/edit" => "users#update"

  resources :books, only: [:new, :create, :index, :show, :edit, :update, :destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
