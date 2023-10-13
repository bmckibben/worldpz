class CreateRecipeCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :recipe_categories do |t|
      t.string :category_name

      t.timestamps null: false
    end
  end
end
