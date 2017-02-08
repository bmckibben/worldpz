Rails.application.routes.draw do

  devise_for :users
  root 'home#index'
  
  get 'home/index' => 'home#index', :as => 'home'
  
  resources :recipe_ingredients
  resources :recipe_ingredients_units
  resources :recipe_steps_ingredients
  resources :recipe_steps_ingredients
  resources :recipe_steps
  resources :recipe_images
  resources :recipes
  resources :recipe_categories

     
end