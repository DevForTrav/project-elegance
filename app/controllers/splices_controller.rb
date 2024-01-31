class SplicesController < ApplicationController
  before_action :set_splice, only: %i[ show edit update destroy ]

  # GET /splices
  def index
    @splices = Splice.all
  end

  # GET /splices/1
  def show
  end

  # GET /splices/new
  def new
    @splice = Splice.new
  end

  # GET /splices/1/edit
  def edit
  end

  # POST /splices
  def create
    @splice = Splice.new(splice_params)

    if @splice.save
      redirect_to @splice, notice: "Splice was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /splices/1
  def update
    if @splice.update(splice_params)
      redirect_to @splice, notice: "Splice was successfully updated.", status: :see_other
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /splices/1
  def destroy
    @splice.destroy
    redirect_to splices_url, notice: "Splice was successfully destroyed.", status: :see_other
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_splice
      @splice = Splice.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def splice_params
      params.require(:splice).permit(:circuit_id, :terminal_id, :label, :parent_splice_id, :length)
    end
end
