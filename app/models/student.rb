class Student < ActiveRecord::Base
  attr_accessible :age, :bio, :full_name, :title
  has_many :courses, dependent: :delete_all
end
