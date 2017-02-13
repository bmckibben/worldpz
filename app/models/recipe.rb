class Recipe < ActiveRecord::Base
	belongs_to :recipe_category
	has_many :recipe_images
	has_many :recipe_steps, :dependent => :destroy
	accepts_nested_attributes_for :recipe_steps, :reject_if => lambda { |a| a[:name].blank? }, :allow_destroy => true

end
