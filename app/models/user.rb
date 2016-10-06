class User < ActiveRecord::Base
  has_secure_password
  validates :username, uniqueness: true
  validates_presence_of :email, uniqueness: true
end
