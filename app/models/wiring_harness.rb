class WiringHarness < ApplicationRecord
  has_many :wiring_harness_connectors
  has_many :connectors, through: :wiring_harness_connectors
  has_many :boat_wiring_harnesses
  has_many :boats, through: :boat_wiring_harnesses
  has_many :components
  has_many :circuits
end
