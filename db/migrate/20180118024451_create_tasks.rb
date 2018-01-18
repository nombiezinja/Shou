class CreateTasks < ActiveRecord::Migration[5.1]
  def change
    create_table :tasks do |t|
      t.integer :user_id, null: false 
      t.string :name , null: false 
      t.string :description, null: false 
      t.boolean :recriprocating, null: false, default: false
      t.integer :helper_id      
      t.integer :reciprocating_task_id 

      t.timestamps
    end
    add_foreign_key :tasks, :users, on_delete: :cascade

  end
end
