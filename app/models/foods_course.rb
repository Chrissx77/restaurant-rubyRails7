class FoodsCourse < ApplicationRecord
  belongs_to :course
  belongs_to :food

  validate :quantita_meno_di_quella_disponibile

  private

  def quantita_meno_di_quella_disponibile
    if quantita > food.quantità
      errors.add(:quantita, "#{food.nome} non può essere maggiore della quantità disponibile. Disponibilità = #{food.quantità}.")
    end
  end

end
