class Course < ActiveRecord::Base
  attr_accessible :course_number, :name, :offered_now, :teacher
  has_many :course_users
  has_many :auth_users, :through => :course_users
end
