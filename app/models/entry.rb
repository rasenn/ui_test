class Entry < ActiveRecord::Base
  attr_accessible :entry, :entry_id, :entry_name, :entry_text, :entry_type, :task_id, :task_id_num
end
