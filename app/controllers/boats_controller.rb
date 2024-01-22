class BoatsController < ApplicationController
  before_action :set_boat, only: %i[ show edit update destroy ]

  # GET /boats
  def index
    @boats = Boat.all.includes(:components)
  end

  # GET /boats/1
  def show
  end

  # GET /boats/new
  def new
    @boat = Boat.new
  end

  # GET /boats/1/edit
  def edit
  end

  # POST /boats
  def create
    @boat = Boat.new(boat_params)

    if @boat.save
      redirect_to @boat, notice: "Boat was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /boats/1
  def update
    if @boat.update(boat_params)
      redirect_to @boat, notice: "Boat was successfully updated.", status: :see_other
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /boats/1
  def destroy
    @boat.destroy
    redirect_to boats_url, notice: "Boat was successfully destroyed.", status: :see_other
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_boat
      @boat = Boat.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def boat_params
      params.require(:boat).permit(:year, :model, :manufacturer)
    end
end
