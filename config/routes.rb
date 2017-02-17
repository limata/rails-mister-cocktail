Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # Routes == User Stories
  # - As a user, I can browse all the cocktails
  root to: 'cocktails#index'

  # - As a user, I want to see details of a given cocktail
  resources :cocktails, only: [ :show, :new, :create, :edit, :update, :destroy] do
    resources :doses, only: :create
  end

  # /doses/3
  resources :doses, only: :destroy


  # - As a user, I want to create a new cocktail
  # - As a user, I want to add an ingredient to a given cocktail
  # - As a user, I want to destroy a cocktail
  # - As a user, I want to update a cocktail
  # - As a user, I want to remove an ingredient from a given cocktail
end
