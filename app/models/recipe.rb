class Recipe < ActiveRecord::Base
	belongs_to :recipe_category
	has_many :recipe_images
	has_many :recipe_steps
end
