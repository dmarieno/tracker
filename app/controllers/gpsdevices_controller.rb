class GpsdevicesController < ApplicationController
  before_action :set_gpsdevice, only: [:show, :edit, :update, :destroy]

  # GET /gpsdevices
  # GET /gpsdevices.json
  def index
    @gpsdevices = Gpsdevice.all
  end

  # GET /gpsdevices/1
  # GET /gpsdevices/1.json
  def show
  end

  # GET /gpsdevices/new
  def new
    @gpsdevice = Gpsdevice.new
  end

  # GET /gpsdevices/1/edit
  def edit
  end

  # POST /gpsdevices
  # POST /gpsdevices.json
  def create
    @gpsdevice = Gpsdevice.new(gpsdevice_params)

    respond_to do |format|
      if @gpsdevice.save
        format.html { redirect_to @gpsdevice, notice: 'Gpsdevice was successfully created.' }
        format.json { render :show, status: :created, location: @gpsdevice }
      else
        format.html { render :new }
        format.json { render json: @gpsdevice.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /gpsdevices/1
  # PATCH/PUT /gpsdevices/1.json
  def update
    respond_to do |format|
      if @gpsdevice.update(gpsdevice_params)
        format.html { redirect_to @gpsdevice, notice: 'Gpsdevice was successfully updated.' }
        format.json { render :show, status: :ok, location: @gpsdevice }
      else
        format.html { render :edit }
        format.json { render json: @gpsdevice.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gpsdevices/1
  # DELETE /gpsdevices/1.json
  def destroy
    @gpsdevice.destroy
    respond_to do |format|
      format.html { redirect_to gpsdevices_url, notice: 'Gpsdevice was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gpsdevice
      @gpsdevice = Gpsdevice.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def gpsdevice_params
      params.require(:gpsdevice).permit(:longitude, :string, :latitude, :string, :timestamp, :string, :)
    end
end
