class CreateStocks < ActiveRecord::Migration[5.2]
  def change
    create_table :stocks do |t|
      t.string :name
      t.decimal :price
      t.decimal :interest
      t.integer :duration
      t.timestamps
    end
  end
end
