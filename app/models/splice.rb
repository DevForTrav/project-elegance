class Splice < ApplicationRecord
  belongs_to :circuit
  belongs_to :terminal
  belongs_to :component, optional: true
  belongs_to :child_splice, class_name: "Splice", optional: true
  belongs_to :wiring_harness_connector, optional: true
  


  # before_save :generate_sku

  # TODO: How to delegate both the circuit.label to the Splice as well as the splice.label
  delegate :label, to: :circuit
  delegate :wire_name, to: :circuit
  delegate :kind, to: :circuit
  delegate :p1_connector, to: :circuit

  def parent
    if parent_splice_id.nil?
      circuit
    else
      parent_splice
    end
  end

  def find_branch
    splice_id = id
  end
  # TODO: Finish the  sku gener
  # A circuit orientation attribute could allow us to 
  # def generate_sku
  #   sku = []
  #   if terminal_id == 4
  #     sku.add("LB-#{circuit.label}-")
  #   elsif component_id.present?
  #     sku.add("BR-#{circuit.label}-")
  #   else

  #   end
  
  # end
end
