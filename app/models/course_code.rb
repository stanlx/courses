class CourseCode < ActiveRecord::Base
  attr_accessible :code, :course_id, :day, :section, :teacher, :times
  belongs_to :course, :class_name => 'Course', :foreign_key => 'course_id'
end
