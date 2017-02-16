class Recipe < ActiveRecord::Base
	belongs_to :recipe_category
	has_many :recipe_images
	has_many :recipe_steps, :dependent => :destroy
	#accepts_nested_attributes_for :recipe_steps, :reject_if => lambda { |a| a[:name].blank? }, :allow_destroy => true
	
	has_many :recipe_ingredient_links, :dependent => :destroy
	#accepts_nested_attributes_for :recipe_ingredient_links, :reject_if => lambda { |a| a[:name].blank? }, :allow_destroy => true

	#has_many :recipe_ingredients, through: :recipe_ingredient_links
	#has_one :recipe_ingredient_unit, through: :recipe_ingredient_links
	has_many :recipe_ingredients, :through => :recipe_ingredient_links
	has_many :recipe_ingredients_units, :through => :recipe_ingredient_links
end
