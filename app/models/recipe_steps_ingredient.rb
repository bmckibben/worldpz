class RecipeStepsIngredient < ActiveRecord::Base
	belongs_to :recipe_steps
	belongs_to :recipe_ingredients
	has_one :recipe_ingredients_units	
end
