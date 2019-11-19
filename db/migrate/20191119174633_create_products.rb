class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :name
      t.references :product_category, null: false, foreign_key: true
      t.text :description
      t.integer :price
      t.string :image
      t.boolean :active

      t.timestamps
    end
  end
end
