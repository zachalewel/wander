class User < ActiveRecord::Base
  has_secure_password
  validates :username, uniqueness: true
  has_many :trip_users
  has_many :trips, :through => :trip_users
end
