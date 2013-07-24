class Task < ActiveRecord::Base
  attr_accessible :content, :name, :status, :project_id
  belongs_to :project
end
