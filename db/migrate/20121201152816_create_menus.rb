class CreateMenus < ActiveRecord::Migration
  def change
    create_table :menus do |t|
      t.integer :page_id
      t.text :menu

      t.timestamps
    end
  end
end
