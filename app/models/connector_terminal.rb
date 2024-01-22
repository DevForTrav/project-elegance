class ConnectorTerminal < ApplicationRecord
  belongs_to :terminal
  belongs_to :connector
end
