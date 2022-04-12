class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.references :cafe, null: false, foreign_key: true
      t.string :category
      t.text :description
      t.string :name
      t.boolean :hidden
      t.decimal :price

      t.timestamps
    end
  end
end
