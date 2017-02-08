class CreateRecipeStepsIngredients < ActiveRecord::Migration
  def change
    create_table :recipe_steps_ingredients do |t|
      t.integer :step_id
      t.integer :ingredient_id
      t.decimal :step_ingredient_quantity
      t.integer :ingredient_units_id

      t.timestamps null: false
    end
  end
end
