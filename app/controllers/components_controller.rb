class ComponentsController < ApplicationController
  before_action :set_component, only: %i[show edit update destroy]
  # before_action :set_boat_details, only: %i[index]

  # GET /components
  def index
    @boats = Boat.all

    if params[:boat_id]
      @boat = Boat.find(params[:boat_id])
    end
    
    @components = categorize_components
  end

  # GET /components/1
  def show
    @boat = Boat.find(params[:boat_id]) if params[:boat_id]
    respond_to do |format|
      format.html
      format.json { render json: @component }
      format.turbo_stream
    end
  end

  # GET /components/new
  def new
    if params[:category].present?
      @component = Component.new(category: params[:category])
    else
      @component = Component.new
    end 

    if params[:boat_id].present?
      @wiring_harnesses = Boat.find(params[:boat_id]).wiring_harnesses
    else
      @wiring_harnesses = WiringHarness.all
    end

    @category = params[:category].pluralize if params[:category].present?


  end

  # GET /components/1/edit
  def edit
  end

  # POST /components
  def create
    if component_params[:wiring_harnees_id].present?
      @wiring_harness = WiringHarness.find(component_params[:wiring_harness_id])
      @component = @wiring_harness.components.build(component_params)
    else
      @component = Component.new(component_params)
    end

    respond_to do |format|
      if @component.save

        format.html { redirect_to components_path }
        format.turbo_stream
        flash[:notice] = "Component #{@component.label} was successfully created."
      else
        render :new, status: :unprocessable_entity
      end
    end 
  end

  # PATCH/PUT /components/1
  def update
    if @component.update(component_params)
      redirect_to @component, notice: "Component was successfully updated.", status: :see_other
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /components/1
  def destroy
    @component.destroy
    redirect_to components_url, notice: "Component was successfully destroyed.", status: :see_other
  end

  def boat_components
    Component.find_by(boat_id: params[:boat_id])
  end

  private

  def categorize_components
    if params[:boat_id].present?
      @boat.components.group_by(&:category)
    else
      Component.all.group_by(&:category)
    end
  end

  def set_boat_details
    @manufacturer ||= session[:manufacturer] ||= params[:manufacturer]

    if params[:manufacturer] == session[:manufacturer]
      @model = session[:model] = params[:model]
      @year = session[:year] = params[:year]
    else
      @manufacturer = session[:manufacturer] = params[:manufacturer]
      session[:model] = session[:year] = nil
    end
  end

  # Use callbacks to share common setup or constraints between actions.
  def set_component
    @component = Component.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def component_params
    params.require(:component).permit(:label, :category, :description, :wiring_harness_id)
  end
end
