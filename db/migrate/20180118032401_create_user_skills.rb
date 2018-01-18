class CreateUserSkills < ActiveRecord::Migration[5.1]
  def change
    create_table :user_skills do |t|
      t.integer :skill_id 
      t.integer :user_id 
      t.integer :level 
      t.timestamps
    end
    add_foreign_key :user_skills, :users, on_delete: :cascade
    add_foreign_key :user_skills, :skills, on_delete: :cascade

  end
end
