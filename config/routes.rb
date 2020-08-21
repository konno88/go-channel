Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'articles#home'

  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end

  resource :timeline, only: [:show]

  resource :followings, only: [:show]

  resources :user_followings, only: [:index, :show]

  resource :followers, only: [:show]

  resources :user_followers, only: [:index, :show]

  resources :searches, only: [:index]

  resources :articles do
    resources :comments, only: [:new, :create]

    resource :like, only: [:show, :create, :destroy]
  end

  resources :accounts, only: [:show] do
    resources :follows, only: [:create]
    resources :unfollows, only: [:create]
  end

  resource :profile, only: [:show, :edit, :update]
  resources :favorites, only: [:index]
end
