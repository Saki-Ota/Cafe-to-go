class CreateCafes < ActiveRecord::Migration[6.1]
  def change
    create_table :cafes do |t|
      t.references :user, null: false, foreign_key: true
      t.string :address
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
