class RecipeIngredientLink < ActiveRecord::Base
	belongs_to :recipes
	belongs_to :recipe_ingredient
	belongs_to :recipe_ingredients_units
	#accepts_nested_attributes_for :recipe_ingredients_unit, :reject_if => lambda { |a| a[:name].blank? }, :allow_destroy => true
end
