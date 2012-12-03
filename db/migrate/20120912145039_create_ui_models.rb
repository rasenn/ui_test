class CreateUiModels < ActiveRecord::Migration
  def change
    create_table :ui_models do |t|

      t.timestamps
    end
  end
end
