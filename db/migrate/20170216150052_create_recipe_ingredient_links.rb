class CreateRecipeIngredientLinks < ActiveRecord::Migration
  def change
    create_table :recipe_ingredient_links do |t|
      t.integer :recipe_id
      t.integer :recipe_ingredient_id
      t.decimal :ingredient_quantity
      t.integer :recipe_ingredient_units_id

      t.timestamps null: false
    end
  end
end
