class Circuit < ApplicationRecord
  belongs_to :wiring_harness
  belongs_to :p1_terminal
  belongs_to :p2_terminal
  belongs_to :p1_connector
  belongs_to :p2_connector
  belongs_to :wire
end
