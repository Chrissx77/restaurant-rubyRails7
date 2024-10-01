class CoursesOrder < ApplicationRecord
  belongs_to :orders
  belongs_to :courses
end
