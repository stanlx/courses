class CourseUser < ActiveRecord::Base
  attr_accessible :course_id, :teacher, :user_id
  belongs_to :user
  belongs_to :course
end
