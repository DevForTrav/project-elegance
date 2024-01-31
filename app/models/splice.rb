class Splice < ApplicationRecord
  belongs_to :circuit
  belongs_to :terminal
  belongs_to :component
  belongs_to :parent_splice, class_name: "Splice", optional: true


  def parent
    unless parent_splice_id
      circuit
    else
      parent_splice
    end
  end
  
end
