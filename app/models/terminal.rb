class Terminal < ApplicationRecord
  has_many :connectors
  has_many :circuits, foreign_key: :p1_terminal_id, class_name: "Terminal"
  has_many :circuits, foreign_key: :p2_terminal_id, class_name: "Terminal"

  enum gender: {
    pin: 0,
    socket: 1
  }
end
