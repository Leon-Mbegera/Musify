Rails.application.routes.draw do

  devise_for :users
  resources :articles
  resources :categories, only: [:create, :show, :new]
end
