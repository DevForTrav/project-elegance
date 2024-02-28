class Boat < ApplicationRecord
  has_many :boat_wiring_harnesses, dependent: :destroy
  has_many :wiring_harnesses, through: :boat_wiring_harnesses
  has_many :components, through: :wiring_harnesses
  has_many :boat_circuits
  has_many :boat_components
  has_many :circuits, through: :wiring_harnesses

  has_one_attached :image

  def name
    "#{year} #{manufacturer} #{model}"
  end

  def categorized_components
    components.group_by(&:category)
  end

  def boat_circuit(circuit_id)
    boat_circuits.find_by(circuit_id: circuit_id)
  end
end