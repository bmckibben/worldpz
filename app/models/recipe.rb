class Recipe < ActiveRecord::Base
	belongs_to :recipe_category

	has_many :recipe_images
	accepts_nested_attributes_for :recipe_images, :reject_if => lambda {|a| a[:image_url].blank? }, :allow_destroy => true

	has_many :recipe_steps, :dependent => :destroy, -> {order(step_order: :asc)}
	accepts_nested_attributes_for :recipe_steps, :allow_destroy => true
	
	has_many :recipe_ingredient_links, :dependent => :destroy
	accepts_nested_attributes_for :recipe_ingredient_links, :allow_destroy => true
	has_many :recipe_ingredients, :through => :recipe_ingredient_links
	has_many :recipe_ingredients_units, :through => :recipe_ingredient_links
end
