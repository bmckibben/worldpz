class Recipe < ActiveRecord::Base
	has_one :recipe_category
	has_many :recipe_images
end
