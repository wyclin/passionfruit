class Student < ActiveRecord::Base
  attr_accessible :email, :first_name, :image, :last_name, :location, :password, :password_confirmation
  has_secure_password

  before_save { |student| student.email = email.downcase }

  validates :first_name, :last_name, presence: => true
  validates :password, presence: true, length: {minimum: 6}
  validates :password_confirmation, presence: true

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }, uniqueness: { case_sensitive: false }
end