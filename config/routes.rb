Rails.application.routes.draw do
  namespace :admin do
    resources :users
    resources :articles
    resources :events
    resources :managers
    resources :organizations
    resources :tags
    resources :taggings
    resources :photos
    resources :news_search_terms
    resources :events_search_terms

    root to: "users#index"
  end

  devise_for :users, controllers: { registrations: 'registrations' }

  resources :organizations, only: [:index, :new, :show, :create, :edit, :update]

  resources :events, only: [:index]

  resources :articles, only: [:index]

  resources :managers, only: [:new, :create]

  resources :directory, only: [:index]

  resources :tags, only: [:create]

  resources :about, only: [:index]

  resources :photos, only: [:create]


  root 'home#index'
end
