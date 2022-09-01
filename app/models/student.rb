class Student < ApplicationRecord
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  before_save { self.email = email.downcase }

  validates :name, presence: true, length: { minimum: 2, maximum: 50 }
  validates :email, presence: true, length: { maximum: 105 },
            uniqueness: { case_sensitive: false },
            format: { with: VALID_EMAIL_REGEX }
  validates_uniqueness_of :name, :email

  has_secure_password

  has_many :enrollments
  has_many :courses, through: :enrollments
end
