class TerminalsController < ApplicationController
  before_action :set_terminal, only: %i[ show edit update destroy ]

  # GET /terminals
  def index
    @terminals = Terminal.all
  end

  # GET /terminals/1
  def show
  end

  # GET /terminals/new
  def new
    @terminal = Terminal.new
  end

  # GET /terminals/1/edit
  def edit
  end

  # POST /terminals
  def create
    @terminal = Terminal.new(terminal_params)

    if @terminal.save
      redirect_to @terminal, notice: "Terminal was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /terminals/1
  def update
    if @terminal.update(terminal_params)
      redirect_to @terminal, notice: "Terminal was successfully updated.", status: :see_other
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /terminals/1
  def destroy
    @terminal.destroy
    redirect_to terminals_url, notice: "Terminal was successfully destroyed.", status: :see_other
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_terminal
      @terminal = Terminal.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def terminal_params
      params.require(:terminal).permit(:part_number, :type, :wire_gauge_min, :wire_gauge_max, :material, :description)
    end
end
