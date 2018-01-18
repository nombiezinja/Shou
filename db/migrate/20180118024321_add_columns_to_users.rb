class AddColumnsToUsers < ActiveRecord::Migration[5.1]
  def change
    change_table :users do |t|
      t.string :username 
      t.string :first_name
      t.string :last_name
      t.integer :score 
      t.integer :accepted
      t.integer :completed
      t.boolean :admin
    end 
  end
end
