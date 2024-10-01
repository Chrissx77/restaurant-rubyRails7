class Course < ApplicationRecord
  has_many :foods_courses , dependent: :destroy
  has_many :foods, through: :foods_courses
  accepts_nested_attributes_for :foods_courses, allow_destroy: true, reject_if: :all_blank

  # has_many :courses_orders
  # has_many :orders, through: :courses_orders
end
