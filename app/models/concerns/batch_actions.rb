module BatchActions
  extend ActiveSupport::Concern

  def batch_create(file)
    csv_importer = CsvImporter.new(file)
    data = csv_importer.import

    data.each do |record|
      model_name.constantize.find_or_create_by(record_params(record))
    end
    redirect_to send("#{model_name.downcase.pluralize}_path")
  end

  private

  def model_name
    # Extract the model name from the controller class name
    @model_name ||= controller_name.classify
  end

  def record_params(record)
    # Define the permitted parameters for the specific model here
    # Replace this with the actual parameters you want to permit
    record.permit(:manufacturer, :year, :model)
  end
end