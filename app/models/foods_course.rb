class FoodsCourse < ApplicationRecord
  belongs_to :courses
  belongs_to :foods
end
