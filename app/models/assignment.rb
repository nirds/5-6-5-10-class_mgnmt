class Assignment < ActiveRecord::Base
  attr_accessible :details, :done, :due_date, :title
  scope :completed, where(done: true)
  scope :pending, where(done: [false, nil])
end
