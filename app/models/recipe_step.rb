class RecipeStep < ActiveRecord::Base
	belongs_to :recipes
	has_many :recipe_steps_ingredients
	has_many :recipe_ingredients, through: :recipe_steps_ingredients
end
