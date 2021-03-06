Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :posts, except: :index

  resources :users, only: [:edit, :update], param: :username

  root to: 'posts#index'
end
