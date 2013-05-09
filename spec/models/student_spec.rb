require 'spec_helper'

describe Student do

  before :each do
    @invalid_student = Student.new
  end

  it "should require an email" do
    @invalid_student.should_not be_valid
  end

  it "should require a valid email" do
    @invalid_student.email = "badEmail"
    @invalid_student.valid?.should be_false
    @invalid_student.errors.full_messages.should include "Email is not valid, must contain an @"
  end

end
