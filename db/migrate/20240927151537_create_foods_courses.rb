class CreateFoodsCourses < ActiveRecord::Migration[7.2]
  def change
    create_table :foods_courses do |t|
      t.references :courses, null: false, foreign_key: true
      t.references :foods, null: false, foreign_key: true
      t.integer :quantita

      t.timestamps
    end
  end
end
