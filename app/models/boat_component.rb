# KWH controls a set number of components via our harnesses.
# Therefore boats contain the same compnents that are in other boats.created_at
# Everything will be the same for those components except for the layout within those boats.
class BoatComponent < ApplicationRecord
  belongs_to :boat
  belongs_to :component

  validates :boat_id, uniqueness: { scope: :component_id, message: 'This component already exists for this boat.' }

  has_one_attached :boat_component_layout
end
