class Picture < ActiveRecord::Base

  belongs_to :user

  has_attached_file :photo
  validates_attachment_content_type :photo, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]

  after_initialize :defaults

  def defaults
    self.upvote = 0
    self.downvote = 0
    self.voted = false
  end

  def self.search(query)
 	 where("email like ?", "%#{query}%") 
  end

end
