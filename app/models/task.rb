class Task < ActiveRecord::Base
  attr_accessible :content, :name, :status
  belongs_to :project
end
