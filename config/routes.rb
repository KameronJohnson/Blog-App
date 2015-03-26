Rails.application.routes.draw do
  devise_for :users
  root :to => 'posts#index'

  resources :posts do
    resources :comments, :except => [:index, :show]
  end

  resources :users, only: [:index, :show, :edit, :update]
end
