class Subject < ActiveRecord::Base
  belongs_to  :user

  def last_name
    self.name.split(' ')[1]
  end
  
end
