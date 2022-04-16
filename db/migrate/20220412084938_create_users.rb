class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :phone_number
      t.string :first_name
      t.string :last_name
      t.string :password
      t.integer :points

      t.timestamps
    end
  end
end
