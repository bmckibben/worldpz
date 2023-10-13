class CreateRecipeIngredientLinks < ActiveRecord::Migration[5.2]
  def change
    create_table :recipe_ingredient_links do |t|
      t.integer :recipe_id
      t.integer :recipe_ingredient_id
      t.decimal :ingredient_quantity
      t.integer :recipe_ingredients_unit_id

      t.timestamps null: false
    end
  end
end
