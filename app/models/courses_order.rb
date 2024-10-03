class CoursesOrder < ApplicationRecord
  belongs_to :order
  belongs_to :course

  validates :quantita, presence: true
end
