class Order < ApplicationRecord
  belongs_to :table

  has_many :courses_orders, dependent: :destroy
  has_many :courses, through: :courses_orders
  accepts_nested_attributes_for :courses_orders, allow_destroy: true, reject_if: :all_blank

  validate :table_has_no_active_order, on: :create

  private
  def table_has_no_active_order # Controlla se c'è già un ordine per quel Tavolo.
    if Order.where(table_id: table_id).where.not(id: id).exists?
      errors.add(:table_id, "ha già un ordine attivo.")
    end
  end
end
