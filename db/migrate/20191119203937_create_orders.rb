class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.references :user, null: false, foreign_key: true
      t.integer :total
      t.integer :sub_total
      t.integer :taxes
      t.string :statu
      t.text :note
      t.boolean :active

      t.timestamps
    end
  end
end
