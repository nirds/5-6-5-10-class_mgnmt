class Course < ActiveRecord::Base
  attr_accessible :description, :student_id, :title
  belongs_to :owner, class_name: 'Student', foreign_key: 'student_id'
end
