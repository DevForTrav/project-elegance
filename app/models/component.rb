class Component < ApplicationRecord
  belongs_to :wiring_harness
  has_many :boats, through: :wiring_harness

  has_many :boat_components
  has_many :circuits
  has_many :splices

  before_save { self.label = label.downcase }

  # validates :label, uniqueness: { scope: :boat_id }
  # validate :circuit_component_id_empty_if_splices_present

  # scope :for_boat, ->(boat_id) { where(boat_id: boat_id) }

  def boat_name
    "#{boat.year} #{boat.manufacturer} #{boat.model}"
  end

  def sorted_circuits_and_splices(sort_param = :label)
    circuits_and_splices = circuits + splices
    circuits_and_splices.sort_by(&sort_param)
  end

  def boat_component(boat_id)
    boat_components.find_by(boat_id: boat_id)
  end

  private

  def circuit_component_id_empty_if_splices_present
    if splices.empty?
      circuits.each do |circuit|
        errors.add(:base, 'Circuit component_id must be empty if component has splices') if circuit.component_id.present?
      end
    end
  end
end
