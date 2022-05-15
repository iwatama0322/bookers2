Rails.application.routes.draw do
  devise_for :users
  root to: 'homes#top'
  get "/homes/about" => "homes#about" , as: "about"
  get "users/:id" => "users#top", as:"users"
  get 'books/:id' => 'books#show', as: 'books'
  resources :books, only: [:new, :create, :edit, :update, :index, :show,  :destroy]
  resources :users, only: [:new, :show, :index, :edit, :update]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
