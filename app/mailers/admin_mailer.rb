class AdminMailer < ActionMailer::Base
  default from: "from@example.com"

  def new_student(student)
    @student = student
    mail to: 'renee@nird.us', subject: 'New Student!!'
  end
end
