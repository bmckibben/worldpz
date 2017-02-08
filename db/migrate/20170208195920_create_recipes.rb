class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.integer :category_id
      t.string :recipe_name
      t.string :recipe_description

      t.timestamps null: false
    end
  end
end
