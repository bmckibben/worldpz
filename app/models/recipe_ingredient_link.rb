class RecipeIngredientLink < ActiveRecord::Base
	belongs_to :recipe
	belongs_to :recipe_ingredient
	belongs_to :recipe_ingredients_unit
end
