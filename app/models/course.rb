class Course < ApplicationRecord
  has_many :foods_courses
  has_many :foods, through: :foods_courses
  has_many :courses_orders
  has_many :orders, through: :courses_orders
end
