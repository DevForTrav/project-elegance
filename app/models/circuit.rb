class Circuit < ApplicationRecord
  belongs_to :wiring_harness
  belongs_to :p1_terminal, class_name: "Terminal"
  belongs_to :p2_terminal, class_name: "Terminal"
  belongs_to :p1_connector, class_name: "WiringHarnessConnector"
  belongs_to :p2_connector, class_name: "WiringHarnessConnector"
  has_many :splices
  

  def wire_name
    secondary_color ? "#{gauge} #{primary_color}/#{secondary_color}" : "#{gauge} #{primary_color}"
  end
end
