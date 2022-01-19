class DeviceInsController < ApplicationController
  before_action :set_device_in, only: %i[ show edit update destroy ]

  # GET /device_ins or /device_ins.json
  def index
    @device_ins = DeviceIn.all
  end

  # GET /device_ins/1 or /device_ins/1.json
  def show
  end

  # GET /device_ins/new
  def new
    @device_in = DeviceIn.new
  end

  # GET /device_ins/1/edit
  def edit
  end

  # POST /device_ins or /device_ins.json
  def create
    @device_in = DeviceIn.new(device_in_params)

    respond_to do |format|
      if @device_in.save
        format.html { redirect_to device_in_url(@device_in), notice: "Device in was successfully created." }
        format.json { render :show, status: :created, location: @device_in }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @device_in.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /device_ins/1 or /device_ins/1.json
  def update
    respond_to do |format|
      if @device_in.update(device_in_params)
        format.html { redirect_to device_in_url(@device_in), notice: "Device in was successfully updated." }
        format.json { render :show, status: :ok, location: @device_in }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @device_in.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /device_ins/1 or /device_ins/1.json
  def destroy
    @device_in.destroy

    respond_to do |format|
      format.html { redirect_to device_ins_url, notice: "Device in was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_device_in
      @device_in = DeviceIn.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def device_in_params
      params.require(:device_in).permit(:title, :content)
    end
end
