class BoatCircuit < ApplicationRecord
  # Every boat with have the same wiring harness system. 
  # Thus the only thing that will be different is the way that system lays in the boat.
  # Therefore the only thing that boat_circuit_layout image.


  belongs_to :boat
  belongs_to :circuit

  validates :boat_id, uniqueness: { scope: :circuit_id, message: "This boat already has this circuit."}

  has_one_attached :boat_circuit_layout
end
