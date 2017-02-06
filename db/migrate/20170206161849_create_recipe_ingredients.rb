class CreateRecipeIngredients < ActiveRecord::Migration
  def change
    create_table :recipe_ingredients do |t|
      t.integer :ingredient_id
      t.string :ingredient_name

      t.timestamps null: false
    end
  end
end
