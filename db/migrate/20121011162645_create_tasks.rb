class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.integer :task_id
      t.string :task_name
      t.integer :case_type_id

      t.timestamps
    end
  end
end
