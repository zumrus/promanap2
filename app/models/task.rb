class Task < ActiveRecord::Base
  attr_accessible :content, :name, :status, :project_id
  belongs_to :project
  
  def donetodo
    if self.status?
      "Done"
    else
      "To do"
    end
  end
end
