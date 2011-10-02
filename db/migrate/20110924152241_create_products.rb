class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :photo_file_name
      t.string :photo_content_type
      t.integer :photo_file_size
      t.datetime :photo_updated_at
      t.integer :user_id
      t.string :title
      t.timestamps
    end
  end
end
