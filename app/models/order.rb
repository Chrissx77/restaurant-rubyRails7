class Order < ApplicationRecord
  belongs_to :tables

  has_many :courses_orders
  has_many :courses, through: :courses_orders
end
