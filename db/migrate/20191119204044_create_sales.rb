class CreateSales < ActiveRecord::Migration[6.0]
  def change
    create_table :sales do |t|
      t.integer :value
      t.string :sale_type
      t.references :user, null: false, foreign_key: true
      t.boolean :active

      t.timestamps
    end
  end
end
