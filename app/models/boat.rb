class Boat < ApplicationRecord
  has_many :components
  has_many :boat_wiring_harnesses
  has_many :wiring_harnesses, through: :boat_wiring_harnesses

  def name
    "#{year} #{manufacturer} #{model}"
  end

  def categorized_components
    components.group_by(&:category)
  end
end
