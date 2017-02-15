class ChangeRecipes02 < ActiveRecord::Migration
  def change
    change_table :recipes do |t|
      t.integer :active,           null: false, default: 0
    end
  end
end
