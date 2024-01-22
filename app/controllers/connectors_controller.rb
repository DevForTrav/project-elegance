class ConnectorsController < ApplicationController
  before_action :set_connector, only: %i[ show edit update destroy ]

  # GET /connectors
  def index
    @connectors = Connector.all
  end

  # GET /connectors/1
  def show
  end

  # GET /connectors/new
  def new
    @connector = Connector.new
  end

  # GET /connectors/1/edit
  def edit
  end

  # POST /connectors
  def create
    @connector = Connector.new(connector_params)

    if @connector.save
      redirect_to @connector, notice: "Connector was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /connectors/1
  def update
    if @connector.update(connector_params)
      redirect_to @connector, notice: "Connector was successfully updated.", status: :see_other
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /connectors/1
  def destroy
    @connector.destroy
    redirect_to connectors_url, notice: "Connector was successfully destroyed.", status: :see_other
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_connector
      @connector = Connector.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def connector_params
      params.require(:connector).permit(:name, :part_number, :contacts, :manufacturer)
    end
end
