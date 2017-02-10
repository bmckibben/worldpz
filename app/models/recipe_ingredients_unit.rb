class RecipeIngredientsUnit < ActiveRecord::Base
	belongs_to :recipe_step_ingredients
end
