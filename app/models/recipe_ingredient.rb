class RecipeIngredient < ActiveRecord::Base
	has_many :recipe_steps_ingredients
	has_many :recipe_steps, through: :recipe_steps_ingredients
end
