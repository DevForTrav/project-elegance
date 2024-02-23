module ApplicationHelper
  def turbo_frame_id_for(model)
    "turbo_frame_#{model.class.name.underscore}_#{model.id}"
  end
end
