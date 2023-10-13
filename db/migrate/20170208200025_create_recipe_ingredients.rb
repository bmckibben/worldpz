class CreateRecipeIngredients < ActiveRecord::Migration[5.2]
  def change
    create_table :recipe_ingredients do |t|
      t.string :ingredient_name

      t.timestamps null: false
    end
  end
end
