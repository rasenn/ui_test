class CreateInfos < ActiveRecord::Migration
  def change
    create_table :infos do |t|
      t.integer :page_id
      t.integer :form_no
      t.integer :info_no
      t.string :name
      t.string :info_type
      t.text :value

      t.timestamps
    end
  end
end
