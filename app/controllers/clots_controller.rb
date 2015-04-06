class ClotsController < ApplicationController
  before_action :set_clot, only: [:show, :edit, :update, :destroy]

  # GET /clots
  # GET /clots.json
  def index
    @clots = Clot.all
  end

  # GET /clots/1
  # GET /clots/1.json
  def show
  end

  # GET /clots/new
  def new
    @clot = Clot.new
    @clot.build_location
  end

  # GET /clots/1/edit
  def edit
  end

  # POST /clots
  # POST /clots.json
  def create
    @clot = Clot.new(clot_params)
    #@clot.location = Location.new()

    respond_to do |format|
      if @clot.save
        format.html { redirect_to @clot, notice: 'Clot was successfully created.' }
        format.json { render :show, status: :created, location: @clot }
      else
        format.html { render :new }
        format.json { render json: @clot.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /clots/1
  # PATCH/PUT /clots/1.json
  def update
    respond_to do |format|
      if @clot.update(clot_params)
        format.html { redirect_to @clot, notice: 'Clot was successfully updated.' }
        format.json { render :show, status: :ok, location: @clot }
      else
        format.html { render :edit }
        format.json { render json: @clot.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /clots/1
  # DELETE /clots/1.json
  def destroy
    @clot.destroy
    respond_to do |format|
      format.html { redirect_to clots_url, notice: 'Clot was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_clot
      @clot = Clot.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def clot_params
      params.require(:clot).permit(:name, location_attributes: [:id, :address])
    end
end
