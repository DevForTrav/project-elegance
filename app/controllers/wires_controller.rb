class WiresController < ApplicationController
  before_action :set_wire, only: %i[ show edit update destroy ]

  # GET /wires
  def index
    @wires = Wire.all
  end

  # GET /wires/1
  def show
  end

  # GET /wires/new
  def new
    @wire = Wire.new
  end

  # GET /wires/1/edit
  def edit
  end

  # POST /wires
  def create
    @wire = Wire.new(wire_params)

    if @wire.save
      redirect_to @wire, notice: "Wire was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /wires/1
  def update
    if @wire.update(wire_params)
      redirect_to @wire, notice: "Wire was successfully updated.", status: :see_other
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /wires/1
  def destroy
    @wire.destroy
    redirect_to wires_url, notice: "Wire was successfully destroyed.", status: :see_other
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_wire
      @wire = Wire.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def wire_params
      params.require(:wire).permit(:primary_color, :secondary_color, :gauge, :quantity)
    end
end
