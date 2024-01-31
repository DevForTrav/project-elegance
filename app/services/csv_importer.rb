class CsvImporter
  def initialize(file)
    @file = file
  end

  def import
    CSV.parse(File.read(@file), headers: true)
  end
end