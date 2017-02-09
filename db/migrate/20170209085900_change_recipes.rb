class ChangeRecipes < ActiveRecord::Migration
  def change
    change_table :recipes do |t|
      t.integer :sort_order
      t.integer :prep_minutes
      t.integer :cook_minutes
      t.integer :servings_quantity
    end
  end
end
