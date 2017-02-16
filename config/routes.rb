Rails.application.routes.draw do

  
  devise_for :users
  root 'home#index'
  
  get 'home/index' => 'home#index', :as => 'home'
  get 'admin/index' => 'admin#index', :as => 'admin'
  post 'home/contact_email' => 'home#contact_email'
  
  resources :recipe_ingredients
  resources :recipe_ingredients_units
  resources :recipe_ingredient_links
  resources :recipe_steps
  resources :recipe_images
  resources :recipes
  resources :recipe_categories
  resources :users

     
end