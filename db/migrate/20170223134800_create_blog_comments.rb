class CreateBlogComments < ActiveRecord::Migration[5.2]
  def change
    create_table :blog_comments do |t|
      t.text :body
      t.integer :commentable_id
      t.string :commentable_type
      t.integer :publish,           null: false, default: 0

      t.timestamps null: false
    end
  end
end
