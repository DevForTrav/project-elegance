class CircuitsController < ApplicationController
  before_action :set_circuit, only: %i[ show edit update destroy ]

  # GET /circuits
  def index
    @circuits = Circuit.all
  end

  # GET /circuits/1
  def show
  end

  # GET /circuits/new
  def new
    @circuit = Circuit.new
    @terminals = Terminal.all
    @wiring_harnesses = WiringHarness.all
    @wiring_harness_connectors = WiringHarnessConnector.all
    @colors = %w(black blue brown green gray orange purple red white yellow)
    @gauges =  %w(12g 14g 16g 18g 20g 21g 22g 24g)
  end

  # GET /circuits/1/edit
  def edit
  end

  # POST /circuits
  def create
    @circuit = Circuit.new(circuit_params)

    if @circuit.save
      redirect_to @circuit, notice: "Circuit was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /circuits/1
  def update
    if @circuit.update(circuit_params)
      redirect_to @circuit, notice: "Circuit was successfully updated.", status: :see_other
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /circuits/1
  def destroy
    @circuit.destroy
    redirect_to circuits_url, notice: "Circuit was successfully destroyed.", status: :see_other
  end

  def form_connectors
    @form_connectors = WiringHarnessConnector.where(wiring_harness_id: params[:wiring_harness_id])

    respond_to do |format|
      format.turbo_stream
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_circuit
      @circuit = Circuit.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def circuit_params
      params.require(:circuit).permit(
        :label,
        :gauge,
        :length,
        :wiring_harness_id,
        :p1_terminal_id,
        :p2_terminal_id,
        :p1_connector_id,
        :p2_connector_id,
        :wire_id,
        :primary_color,
        :secondary_color
      )
    end
end
