class Terminal < ApplicationRecord
  has_many :connectors

  enum gender: {
    pin: 0,
    socket: 1
  }
end
