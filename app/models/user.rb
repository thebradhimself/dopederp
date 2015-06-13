class User < ActiveRecord::Base
  has_many :pictures

  has_secure_password
  
  validates :username, length {minimum: 5}, presence: true, uniqueness: true
end
