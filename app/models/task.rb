class Task < ActiveRecord::Base
  include TasksHelper
  attr_accessible :content, :name, :status, :project_id
  belongs_to :project
  
end
