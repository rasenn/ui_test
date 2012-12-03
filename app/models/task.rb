class Task < ActiveRecord::Base
  attr_accessible :case_type_id, :task_id, :task_name
end
