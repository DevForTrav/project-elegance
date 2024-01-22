class Connector < ApplicationRecord
  belongs_to :terminal
  belongs_to :secondary_terminal, class_name: 'Terminal', foreign_key: 'secondary_terminal_id'

  def terminals
    if secondary_terminal.nil?
      false
    else
      [terminal, secondary_terminal]
    end
  end
end
