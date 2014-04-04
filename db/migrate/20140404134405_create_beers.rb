class CreateBeers < ActiveRecord::Migration
  def change
    create_table :beers do |t|
      t.string :style, null: false
      t.integer :rating, null: false
      t.string :description, null: false
      t.string :name, null: false

      t.timestamps
    end

    add_index :beers, :name, unique: true
  end
end
