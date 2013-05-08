class Student < ActiveRecord::Base
  attr_accessible :age, :bio, :full_name, :title
end
