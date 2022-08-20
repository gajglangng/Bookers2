Rails.application.routes.draw do
  get 'user/index'
  get 'user/show'
  devise_for :users
  root to: "homes#top"
  get "/homes/about" => "homes#about", as: "about"
  resources :books, only: [:new, :index, :show, :update]
  resources :user, only: [:index, :show, :edit]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
