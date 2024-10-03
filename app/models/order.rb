class Order < ApplicationRecord
  belongs_to :table

  has_many :courses_orders, dependent: :destroy
  has_many :courses, through: :courses_orders
  accepts_nested_attributes_for :courses_orders, allow_destroy: true, reject_if: :all_blank
end
