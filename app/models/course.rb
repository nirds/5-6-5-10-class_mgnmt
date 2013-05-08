class Course < ActiveRecord::Base
  attr_accessible :description, :student_id, :title
  has_many :student_courses
  belongs_to :student#s, through: :student_courses
end
