class Boat < ApplicationRecord
  has_many :components, dependent: :destroy
  has_many :boat_wiring_harnesses, dependent: :destroy
  has_many :wiring_harnesses, through: :boat_wiring_harnesses
  has_many :boat_circuits
  has_many :circuits, through: :boat_circuits

  has_one_attached :image

  def name
    "#{year} #{manufacturer} #{model}"
  end

  def categorized_components
    components.group_by(&:category)
  end
end
