module TasksHelper

  def donetodo
    if self.status?
      "Done"
    else
      "To do"
    end
  end
  
end
