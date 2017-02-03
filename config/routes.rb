Rails.application.routes.draw do


  root 'home#index'
  
  get 'home/index' => 'home#index', :as => 'home'
     
end