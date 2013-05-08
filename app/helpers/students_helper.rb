module StudentsHelper

  def short_bio student
    truncate student.bio, length: 10
  end

end
