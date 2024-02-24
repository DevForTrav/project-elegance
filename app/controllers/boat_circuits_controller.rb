class BoatCircuitsController < ApplicationController
  before_action :set_boat_circuit, only: %i[ show edit update destroy ]

  # GET /boat_circuits
  def index
    @boat_circuits = BoatCircuit.all
  end

  # GET /boat_circuits/1
  def show
  end

  # GET /boat_circuits/new
  def new
    @boat_circuit = BoatCircuit.new
  end

  # GET /boat_circuits/1/edit
  def edit
  end

  # POST /boat_circuits
  def create
    @boat_circuit = BoatCircuit.new(boat_circuit_params)

    if @boat_circuit.save
      redirect_to @boat_circuit, notice: "Boat circuit was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /boat_circuits/1
  def update
    if @boat_circuit.update(boat_circuit_params)
      redirect_to @boat_circuit, notice: "Boat circuit was successfully updated.", status: :see_other
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /boat_circuits/1
  def destroy
    @boat_circuit.destroy
    redirect_to boat_circuits_url, notice: "Boat circuit was successfully destroyed.", status: :see_other
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_boat_circuit
      @boat_circuit = BoatCircuit.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def boat_circuit_params
      params.require(:boat_circuit).permit(:boat_id, :circuit_id)
    end
end
