Rails.application.routes.draw do
  namespace :admin do
    resources :users
    resources :articles
    resources :events
    resources :managers
    resources :organizations
    resources :tags
    resources :taggings

    root to: "users#index"
  end

  devise_for :users, controllers: { registrations: 'registrations' }

  resources :organizations, only: [:new, :show, :create, :edit, :update]

  resources :events, only: [:index]

  resources :news, only: [:index]

  resources :managers, only: [:new, :create]

  resources :directory, only: [:index]

  root 'home#index'
end
