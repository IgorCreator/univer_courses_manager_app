class Course < ApplicationRecord
  validates :short_name, presence: true, length: { minimum: 3, maximum: 15 }
  validates :name, presence: true, length: { minimum: 5, maximum: 50 }
  validates :description, presence: true, length: { minimum: 5, maximum: 300 }
  validates_uniqueness_of :short_name
end
