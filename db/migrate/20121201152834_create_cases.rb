class CreateCases < ActiveRecord::Migration
  def change
    create_table :cases do |t|
      t.integer :page_id
      t.integer :form_no
      t.text :value

      t.timestamps
    end
  end
end
