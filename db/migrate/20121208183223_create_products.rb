class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :title
      t.decimal :price, :precision => 6, :scale => 2
      t.string :alternative_price
      t.string :image
      t.boolean :availability, default: false
      t.boolean :active, default: false
      t.integer :position
      t.references :category
      t.string :link, default: "#"

      t.timestamps
    end
    add_index :products, :category_id
  end
end
