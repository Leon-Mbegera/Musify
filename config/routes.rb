Rails.application.routes.draw do

  devise_for :users
  root 'articles#index'
  resources :articles do 
    resources :opinions 
    resources :votes, only: [:create]
  end
  resources :categories, only: [:create, :show, :new]
end
