class RecipeCategory < ActiveRecord::Base
	has_many :recipes, :foreign_key => "category_id"
end
