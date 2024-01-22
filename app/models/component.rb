class Component < ApplicationRecord
  belongs_to :boat

  scope :for_boat, ->(boat_id) { where(boat_id: boat_id) }


  def boat_name
    "#{boat.year} #{boat.manufacturer} #{boat.model}"
  end
end
