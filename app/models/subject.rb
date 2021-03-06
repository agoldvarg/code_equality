class Subject < ActiveRecord::Base
  acts_as_votable
  belongs_to  :user

  def last_name
    self.name.split(' ')[1]
  end
  
  has_attached_file :image, styles: { medium: "300x300>" }
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
end
