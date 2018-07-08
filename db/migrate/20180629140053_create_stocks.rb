class CreateStocks < ActiveRecord::Migration[5.2]
  def change
    create_table :stocks do |t|
      t.string :name, null: false, default: ""
      t.decimal :price, null: false, default: 0
      t.decimal :interest, null: false, default: 0
      t.integer :duration, null: false, default: 0
      t.belongs_to :user, index: true
      t.timestamps
    end
  end
end