Rails.application.routes.draw do
  get 'books/index'
  get 'books/show'
  get 'books/edit'
  root :to => "homes#top"
  get "home/about" => "homes#about"
  devise_for :users
  
end
