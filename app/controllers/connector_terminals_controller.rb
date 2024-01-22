class ConnectorTerminalsController < ApplicationController
  before_action :set_connector_terminal, only: %i[ show edit update destroy ]

  # GET /connector_terminals
  def index
    @connector_terminals = ConnectorTerminal.all
  end

  # GET /connector_terminals/1
  def show
  end

  # GET /connector_terminals/new
  def new
    @connector_terminal = ConnectorTerminal.new
  end

  # GET /connector_terminals/1/edit
  def edit
  end

  # POST /connector_terminals
  def create
    @connector_terminal = ConnectorTerminal.new(connector_terminal_params)

    if @connector_terminal.save
      redirect_to @connector_terminal, notice: "Connector terminal was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /connector_terminals/1
  def update
    if @connector_terminal.update(connector_terminal_params)
      redirect_to @connector_terminal, notice: "Connector terminal was successfully updated.", status: :see_other
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /connector_terminals/1
  def destroy
    @connector_terminal.destroy
    redirect_to connector_terminals_url, notice: "Connector terminal was successfully destroyed.", status: :see_other
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_connector_terminal
      @connector_terminal = ConnectorTerminal.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def connector_terminal_params
      params.require(:connector_terminal).permit(:terminal_id, :connector_id)
    end
end
