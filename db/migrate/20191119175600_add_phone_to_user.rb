class AddPhoneToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :phone, :string
    add_column :users, :name, :string
    add_reference :users, :city, null: false, foreign_key: true
  end
end
