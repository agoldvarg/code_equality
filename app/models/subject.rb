class Subject < ActiveRecord::Base

  def last_name
    self.name.split(' ')[1]
  end
  
end
