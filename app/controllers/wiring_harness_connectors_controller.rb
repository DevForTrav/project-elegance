class WiringHarnessConnectorsController < ApplicationController
  before_action :set_wiring_harness_connector, only: %i[ show edit update destroy ]

  # GET /wiring_harness_connectors
  def index
    @wiring_harness_connectors = WiringHarnessConnector.all
  end

  # GET /wiring_harness_connectors/1
  def show
  end

  # GET /wiring_harness_connectors/new
  def new
    @wiring_harness_connector = WiringHarnessConnector.new
  end

  # GET /wiring_harness_connectors/1/edit
  def edit
  end

  # POST /wiring_harness_connectors
  def create
    @wiring_harness_connector = WiringHarnessConnector.new(wiring_harness_connector_params)

    if @wiring_harness_connector.save
      redirect_to @wiring_harness_connector, notice: "Wiring harness connector was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /wiring_harness_connectors/1
  def update
    if @wiring_harness_connector.update(wiring_harness_connector_params)
      redirect_to @wiring_harness_connector, notice: "Wiring harness connector was successfully updated.", status: :see_other
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /wiring_harness_connectors/1
  def destroy
    @wiring_harness_connector.destroy
    redirect_to wiring_harness_connectors_url, notice: "Wiring harness connector was successfully destroyed.", status: :see_other
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_wiring_harness_connector
      @wiring_harness_connector = WiringHarnessConnector.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def wiring_harness_connector_params
      params.require(:wiring_harness_connector).permit(:label, :populated_contacts, :wiring_harness_id, :connector_id)
    end
end
