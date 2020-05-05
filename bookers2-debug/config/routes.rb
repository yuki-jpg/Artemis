Rails.application.routes.draw do
  root 'home#top'
  devise_for :users
  resources :books do
  resource :favorites, only: [:create, :destroy]
  resource :book_comments, only: [:create, :destroy]
  end
  resources :users,only: [:show,:index,:edit,:update]
  
  get 'home/about'
end