class BoatsController < ApplicationController
  include BatchActions
  before_action :set_boat, only: %i[ show edit update destroy ]

  # GET /boats
  def index
    @boats = Boat.all.includes(:components)
  end

  # GET /boats/1
  def show
    @components = @boat.categorized_components
    @wiring_harnesses = @boat.wiring_harnesses.includes(:components)
  end

  # GET /boats/new
  def new
    @boat = Boat.new
  end

  # GET /boats/1/edit
  def edit; end

  # POST /boats
  def create
    @boat = Boat.new(boat_params)

    if @boat.save
      respond_to do |format|
        format.turbo_stream {
          render turbo_stream:
            turbo_stream.replace(
              'new_boat_form',
              partial: 'boats/boat',
              locals: { boat: @boat }
            )
        }
        format.html { redirect_to @boat, notice: 'Boat was successfully created.' }
      end
    else
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /boats/1
  def update
    if @boat.update(boat_params)
      redirect_to @boat, notice: "Boat was successfully updated.", status: :see_other
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /boats/1
  def destroy
    @boat.destroy
    redirect_to boats_url, notice: "Boat was successfully destroyed.", status: :see_other
  end

  def batch_upload; end

  def batch_create
    file = params[:boat_file]
    csv_importer = CsvImporter.new(file)
    data = csv_importer.import

    data.each do |boat|
      Boat.find_or_create_by(manufacturer: boat["Manufacturer"], year: boat["Year"], model: boat["Model"])
    end
    redirect_to boats_path
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_boat
      @boat = Boat.find(params[:id])  
    end

    # Only allow a list of trusted parameters through.
    def boat_params
      params.require(:boat).permit(:year, :model, :manufacturer, :side_view_image)
    end
end
