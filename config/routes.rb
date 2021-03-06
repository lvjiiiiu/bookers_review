Rails.application.routes.draw do
  devise_for :users
  root :to => "homes#top"
  get "home/about" => "homes#about"
  resources :users, only: [:show,:index,:edit,:update]
  resources :books, only: [:index, :show, :edit, :create, :destroy, :update] 
  resources :users, only: [:index, :show, :edit, :update]
end
