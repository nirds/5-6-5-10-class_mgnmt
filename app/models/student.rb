class Student < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :age, :bio, :full_name, :title, :email, 
                  :password, :password_confirmation, :remember_me
  has_many :student_courses
  has_many :courses#, :through => :student_courses

  validates_presence_of :email
  validates :full_name, format:  { with: /\w*@\w*.\w*/,
    message: I18n.t('student.valid_msg') }

  before_create :set_defaults
  after_create :send_admin_email

  scope :renee, where(full_name: "Renee")

private
  def send_admin_email
    AdminMailer.new_student(self).deliver
  end

  def set_defaults
    self.title = "N/A" if title.blank?
  end

end
