class WiringHarnessConnector < ApplicationRecord
  has_many :circuits, foreign_key: :p1_connector_id, class_name: "WiringHarnessConnector"
  has_many :circuits, foreign_key: :p2_connector_id, class_name: "WiringHarnessConnector"
  has_many :splices
  
  belongs_to :wiring_harness
  belongs_to :connector
end
