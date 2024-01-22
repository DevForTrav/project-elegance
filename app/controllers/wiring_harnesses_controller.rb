class WiringHarnessesController < ApplicationController
  before_action :set_wiring_harness, only: %i[ show edit update destroy ]

  # GET /wiring_harnesses
  def index
    @wiring_harnesses = WiringHarness.all
  end

  # GET /wiring_harnesses/1
  def show
  end

  # GET /wiring_harnesses/new
  def new
    @wiring_harness = WiringHarness.new
  end

  # GET /wiring_harnesses/1/edit
  def edit
  end

  # POST /wiring_harnesses
  def create
    @wiring_harness = WiringHarness.new(wiring_harness_params)

    if @wiring_harness.save
      redirect_to @wiring_harness, notice: "Wiring harness was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /wiring_harnesses/1
  def update
    if @wiring_harness.update(wiring_harness_params)
      redirect_to @wiring_harness, notice: "Wiring harness was successfully updated.", status: :see_other
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /wiring_harnesses/1
  def destroy
    @wiring_harness.destroy
    redirect_to wiring_harnesses_url, notice: "Wiring harness was successfully destroyed.", status: :see_other
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_wiring_harness
      @wiring_harness = WiringHarness.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def wiring_harness_params
      params.require(:wiring_harness).permit(:name, :boat_id)
    end
end
