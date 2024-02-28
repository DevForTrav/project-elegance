class BoatComponentsController < ApplicationController
  before_action :set_boat_component, only: %i[ show edit update destroy ]

  # GET /boat_components
  def index
    @boat_components = BoatComponent.all
  end

  # GET /boat_components/1
  def show
  end

  # GET /boat_components/new
  def new
    if params[:boat_id] && params[:component_id]
      @boat = Boat.find(params[:boat_id]) if params[:boat_id]
      @component = Component.find(params[:component_id]) if params[:component_id]
      @boat_component = @boat.boat_components.build(component_id: @component.id)
    else
      @boat_component = BoatComponent.new
    end
  end

  # GET /boat_components/1/edit
  def edit
  end

  # POST /boat_components
  def create
    if params[:boat_id] && params[:component_id]
      @boat = Boat.find(params[:boat_id]) if params[:boat_id]
      @component = Component.find(params[:component_id]) if params[:component_id]
      @boat_component = @boat.boat_components.build(component_id: @component.id)
    else
      @boat_component = BoatComponent.new(boat_component_params)
    end

    if @boat_component.save
      redirect_to @boat_component, notice: "Boat component was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /boat_components/1
  def update
    if @boat_component.update(boat_component_params)
      redirect_to @boat_component, notice: "Boat component was successfully updated.", status: :see_other
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /boat_components/1
  def destroy
    @boat_component.destroy
    redirect_to boat_components_url, notice: "Boat component was successfully destroyed.", status: :see_other
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_boat_component
      @boat_component = BoatComponent.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def boat_component_params
      params.require(:boat_component).permit(:boat_id, :component_id)
    end
end
