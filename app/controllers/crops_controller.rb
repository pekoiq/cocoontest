class CropsController < ApplicationController
  before_action :set_crop, only: [:show, :edit, :update, :destroy]

  # GET /crops
  # GET /crops.json
  def index
    @crops = Crop.all
    @plantings = Planting.all
    @varieties = Variety.all
    @croptasks = Croptask.all
    @tasktodos = Tasktodo.all
  end

  # GET /crops/1
  # GET /crops/1.json
  def show
    @crop = Crop.find(params[:id])

  end

  # GET /crops/new
  def new
    @crop = Crop.new
    @crop.plantings.build.varieties.build
    @crop.croptasks.build
  end
    # GET /crops/1/edit
  def edit
      @crop = Crop.find(params[:id])
  end

  # POST /crops
  # POST /crops.json
  def create
    @crop = Crop.new(crop_params)

    respond_to do |format|
      if @crop.save
        format.html { redirect_to @crop, notice: 'Crop was successfully created.' }
        format.json { render :show, status: :created, location: @crop }
      else
        format.html { render :new }
        format.json { render json: @crop.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /crops/1
  # PATCH/PUT /crops/1.json
  def update
    respond_to do |format|
      if @crop.update(crop_params)
        format.html { redirect_to @crop, notice: 'Crop was successfully updated.' }
        format.json { render :show, status: :ok, location: @crop }
      else
        format.html { render :edit }
        format.json { render json: @crop.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /crops/1
  # DELETE /crops/1.json
  def destroy
    @crop.destroy
    respond_to do |format|
      format.html { redirect_to crops_url, notice: 'Crop was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_crop
      @crop = Crop.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def crop_params

   params
   .require(:crop)
  .permit(:name, :transplantordirectseed, :rowsperbed, :seedsperounce, :unit, :yield, :priceperunit, :seedsperrowfoot, :greenhouseweeks, :inrowspacing, :seedspercell, :cellsperflat,
    croptasks_attributes: [:id, :planting_id, :task, :weeksfromfielddate, :category, :_destroy],
      plantings_attributes: [:id, :croptask_id, :planting, :bedfeet, :fielddate, :weeksuntilharvest, :weeksofharvest, :greehousedate, :firstharvest, :lastharvest, :weeklyyield, :_destroy,
    varieties_attributes: [:id, :variety, :percentageofplanting, :varietybedfeet, :transplantflats, :_destroy,
      ]])
end
 end
