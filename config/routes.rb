Rails.application.routes.draw do
  devise_for :users
  namespace :admin do
    resources :posts

    root to: 'posts#index'
  end
  resources :posts
  root 'public#index'
end
