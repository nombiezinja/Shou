class CreateSkills < ActiveRecord::Migration[5.1]
  def change
    create_table :skills do |t|
      t.string :name, null: false
      t.string :description 
      t.boolean :system  # Whether this has been approved by the system 
      t.integer :added_by  # Which user added this 
 
      t.timestamps
    end
  end
end
