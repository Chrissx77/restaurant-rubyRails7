class CreateFoods < ActiveRecord::Migration[7.2]
  def change
    create_table :foods do |t|
      t.string :nome
      t.string :categoria
      t.integer :quantità

      t.timestamps
    end
  end
end
