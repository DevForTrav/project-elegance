class ComponentsController < ApplicationController
  before_action :set_component, only: %i[show edit update destroy]
  before_action :set_boat_details, only: %i[index]

  # GET /components
  def index
    @boats = Boat.all
    @manufacturers = @boats.all
    @models = @manufacturer.present? ? @boats.where(manufacturer: @manufacturer).pluck(:id, :model) : @boats.pluck(:id, :model) 
    @years =  @model.present? ? @boats.where(manufacturer: @manufacturer, model: @model).pluck(:id, :year) : @boats.pluck(:id, :year)
    if @model.present? && @year.present? && @manufacturer.present?
      @boat = @boats.find_by(model: @model, manufacturer: @manufacturer, year: @year)
    end
    @components = categorize_components

  end

  # GET /components/1
  def show
    respond_to do |format|
      format.html
      format.json { render json: @component }
      format.turbo_stream
    end
  end

  # GET /components/new
  def new
    @component = Component.new
  end

  # GET /components/1/edit
  def edit
  end

  # POST /components
  def create
    @component = Component.new(component_params)

    if @component.save
      redirect_to components_path, notice: "Component was successfully created."
    else
      render :new, status: :unprocessable_entity
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
    if @boat
      Component.where(boat_id: @boat.id).group_by(&:category)
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
    params.require(:component).permit(:label, :boat_id, :category, :description)
  end
end
