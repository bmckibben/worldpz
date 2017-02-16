class RecipeIngredientsUnit < ActiveRecord::Base
	#has_many :recipe_ingredient_links, :foreign_key => 'recipe_ingredient_units_id'
	has_many :recipe_ingredient_links
end
