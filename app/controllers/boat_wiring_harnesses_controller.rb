class BoatWiringHarnessesController < ApplicationController
  before_action :set_boat_wiring_harness, only: %i[ show edit update destroy ]

  # GET /boat_wiring_harnesses
  def index
    @boat_wiring_harnesses = BoatWiringHarness.all
  end

  # GET /boat_wiring_harnesses/1
  def show
  end

  # GET /boat_wiring_harnesses/new
  def new
    if params[:boat_id].present?
      @boat = Boat.find_by(id: params[:boat_id])
      @boat_wiring_harness = @boat.boat_wiring_harnesses.build
    else
      @boat_wiring_harness = BoatWiringHarness.new
    end
  end

  # GET /boat_wiring_harnesses/1/edit
  def edit
  end

  # POST /boat_wiring_harnesses
  def create
    if params[:boat_id].present?
      @boat = Boat.find_by(id: params[:boat_id])
      @boat_wiring_harness = @boat.boat_wiring_harnesses.build(boat_wiring_harness_params)
    else
      @boat_wiring_harness = BoatWiringHarness.new(boat_wiring_harness_params)
    end

    @wiring_harness = @boat_wiring_harness.wiring_harness
    if @boat_wiring_harness.save
      respond_to do |format|
        format.html { redirect_to @boat, notice: "Boat wiring harness was successfully created." }
        format.turbo_stream

      end
    else
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /boat_wiring_harnesses/1
  def update
    if @boat_wiring_harness.update(boat_wiring_harness_params)
      redirect_to @boat_wiring_harness, notice: "Boat wiring harness was successfully updated.", status: :see_other
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /boat_wiring_harnesses/1
  def destroy
    @boat_wiring_harness.destroy
    redirect_to boat_wiring_harnesses_url, notice: "Boat wiring harness was successfully destroyed.", status: :see_other
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_boat_wiring_harness
      @boat_wiring_harness = BoatWiringHarness.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def boat_wiring_harness_params
      params.require(:boat_wiring_harness).permit(:boat_id, :wiring_harness_id)
    end
end
