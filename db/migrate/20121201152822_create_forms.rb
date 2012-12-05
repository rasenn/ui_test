class CreateForms < ActiveRecord::Migration
  def change
    create_table :forms do |t|
      t.integer :page_id
      t.integer :form_no
      t.string :form_type
      t.string :name

      t.timestamps
    end
  end
end
