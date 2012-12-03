class CourseCode < ActiveRecord::Base
  attr_accessible :code, :course_id, :day, :section, :teacher, :times
end
