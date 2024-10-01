class Food < ApplicationRecord
  has_many :foods_courses , dependent: :destroy
  has_many :courses, through: :foods_courses
end
