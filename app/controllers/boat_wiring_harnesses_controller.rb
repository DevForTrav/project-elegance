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
    @boat_wiring_harness = BoatWiringHarness.new
  end

  # GET /boat_wiring_harnesses/1/edit
  def edit
  end

  # POST /boat_wiring_harnesses
  def create
    @boat_wiring_harness = BoatWiringHarness.new(boat_wiring_harness_params)

    if @boat_wiring_harness.save
      redirect_to @boat_wiring_harness, notice: "Boat wiring harness was successfully created."
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
