class CreateDescriptions < ActiveRecord::Migration
  def change
    create_table :descriptions do |t|
      t.integer :product_id
      t.string :description

      t.timestamps
    end
  end
end
