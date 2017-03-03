Rails.application.routes.draw do
  
devise_for :users
  root 'home#index'
  
  get 'home/index' => 'home#index', :as => 'home'
  get 'admin/index' => 'admin#index', :as => 'admin'
  post 'home/contact_email' => 'home#contact_email'
  get 'blogs/list' => 'blogs#list' , :as => 'list_blogs'
  get 'blogs/display/:id(.:format)' => 'blogs#display', :as => 'display_blog'
  get 'home/display_recipe/:id(.:format)' => 'home#display_recipe', :as => 'display_recipe'
  
  resources :recipe_ingredients
  resources :recipe_ingredients_units
  resources :recipe_ingredient_links
  resources :recipe_steps
  resources :recipe_images
  resources :recipes
  resources :recipe_categories
  resources :users
  resources :blogs do
    resources :blog_comments
  end
  resources :blog_comments do
    resources :blog_comments
  end    

end