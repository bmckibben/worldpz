class CreateBlogs < ActiveRecord::Migration[5.2]
  create_table :blogs do |t|
    t.string :title,           null: false
    t.text :body
    t.integer :publish,           null: false, default: 0

    t.timestamps null: false
  end
end
