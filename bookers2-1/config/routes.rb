Rails.application.routes.draw do
  get 'favorites/create'
  get 'favorites/destroy'
  root to: 'homes#top'
  get 'home/about' => 'homes#about'
  devise_for :users
  resources :users,only: [:show,:index,:edit,:update]
  resources :books do
    resources :book_comments, only: [:create, :destroy]
    resource :favorites,only: [:create,:destroy]
  end

end
