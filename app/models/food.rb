class Food < ApplicationRecord
  has_many :foods_courses
  has_many :courses, through: :foods_courses
end
