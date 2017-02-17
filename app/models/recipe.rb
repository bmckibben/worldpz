class Recipe < ActiveRecord::Base
	belongs_to :recipe_category
	has_many :recipe_images
	has_many :recipe_steps, :dependent => :destroy
	
	has_many :recipe_ingredient_links, :dependent => :destroy

	has_many :recipe_ingredients, :through => :recipe_ingredient_links
	has_many :recipe_ingredients_units, :through => :recipe_ingredient_links
end
