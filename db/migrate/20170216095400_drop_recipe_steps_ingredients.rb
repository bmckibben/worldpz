class DropRecipeStepsIngredients < ActiveRecord::Migration
  def change
    drop_table :recipe_steps_ingredients 
  end
end
