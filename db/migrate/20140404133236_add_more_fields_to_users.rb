class AddMoreFieldsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :first_name, :string, null: false
    add_column :users, :last_name, :string, null: false
    add_column :users, :username, :string, null: false
    add_column :users, :phone_number, :string, null: false

    add_index :users, :username, unique: true
  end
end
