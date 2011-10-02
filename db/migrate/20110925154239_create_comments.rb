class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.references :user
      t.references :product
      t.string :comment

      t.timestamps
    end
    add_index :comments, :user_id
    add_index :comments, :product_id
  end
end
