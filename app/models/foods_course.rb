class FoodsCourse < ApplicationRecord
  belongs_to :course
  belongs_to :food
end
