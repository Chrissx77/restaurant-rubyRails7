class CreateCoursesOrders < ActiveRecord::Migration[7.2]
  def change
    create_table :courses_orders do |t|
      t.references :order, null: false, foreign_key: true
      t.references :course, null: false, foreign_key: true
      t.integer :quantita, null: false
      t.timestamps
    end
  end
end
