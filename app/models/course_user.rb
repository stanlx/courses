class CourseUser < ActiveRecord::Base
  attr_accessible :course_id, :teacher, :user_id
  belongs_to :auth_user, foreign_key: "user_id"
  belongs_to :course
end
