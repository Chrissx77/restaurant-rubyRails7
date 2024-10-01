class CreateCoursesOrders < ActiveRecord::Migration[7.2]
  def change
    create_table :courses_orders do |t|
      t.references :orders, null: false, foreign_key: true
      t.references :courses, null: false, foreign_key: true
      t.integer :quantita

      t.timestamps
    end
  end
end
