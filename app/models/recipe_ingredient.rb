class RecipeIngredient < ActiveRecord::Base
	has_many :recipe_ingredient_links
end
