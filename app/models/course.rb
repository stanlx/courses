class Course < ActiveRecord::Base
  attr_accessible :course_number, :name, :offered_now, :teacher
  has_many :courseusers
end
