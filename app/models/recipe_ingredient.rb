class RecipeIngredient < ActiveRecord::Base
	#has_many :recipe_ingredient_links, :foreign_key => 'recipe_ingredient_id'
	has_many :recipe_ingredient_links
end
