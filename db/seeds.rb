# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
names = Student.all.map{|s| s.full_name}
unless names.include?("Renee")
  Student.create(full_name: "Renee", title: "Teacher", email: "renee@nird.us")
end