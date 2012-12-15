class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :title
      t.string :position
      t.boolean :active, default: true

      t.timestamps
    end
  end
end
