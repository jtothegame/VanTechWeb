Rails.application.routes.draw do
  namespace :admin do
    resources :users
    resources :articles
    resources :events
    resources :managers
    resources :organizations
    resources :tags
    resources :taggings
<<<<<<< HEAD
=======
    resources :photos
    resources :headers
    resources :icons
    resources :news_search_terms
    resources :events_search_terms
>>>>>>> 011b4be37d3641ff9f541b29728538be01f99a07

    root to: "users#index"
  end

  devise_for :users, controllers: { registrations: 'registrations' }

<<<<<<< HEAD
  resources :organizations, only: [:new, :show, :create, :edit, :update]
=======
  resources :organizations, only: [:index, :new, :show, :create, :edit, :update]
>>>>>>> 011b4be37d3641ff9f541b29728538be01f99a07

  resources :events, only: [:index]

  resources :articles, only: [:index]

  resources :managers, only: [:new, :create]

  resources :directory, only: [:index]

  resources :tags, only: [:create]

  resources :about, only: [:index]

  resources :photos, only: [:create]


  root 'home#index'
end
