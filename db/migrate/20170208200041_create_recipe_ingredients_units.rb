class CreateRecipeIngredientsUnits < ActiveRecord::Migration
  def change
    create_table :recipe_ingredients_units do |t|
      t.string :ingredient_unit_name

      t.timestamps null: false
    end
  end
end
