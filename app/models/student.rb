class Student < ActiveRecord::Base
  attr_accessible :age, :bio, :full_name, :title, :email
  has_many :student_courses
  has_many :courses#, :through => :student_courses

  validates_presence_of :email
  validates :email, format:  { with: /\w*@\w*.\w*/,
    message: "is not valid, must contain an @" }

  before_create :set_defaults

private
  def set_defaults
    self.title = "N/A" if title.blank?
  end

end
