class RenameColumnsInCoursesOrders < ActiveRecord::Migration[7.2]
  def change
    rename_column :courses_orders, :orders_id, :order_id
    rename_column :courses_orders, :courses_id, :course_id
  end
end
