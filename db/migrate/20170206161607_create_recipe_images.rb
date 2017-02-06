class CreateRecipeImages < ActiveRecord::Migration
  def change
    create_table :recipe_images do |t|
      t.integer :images_id
      t.integer :recipe_id
      t.string :image_url

      t.timestamps null: false
    end
  end
end
