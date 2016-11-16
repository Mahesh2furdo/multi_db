class FurdosController < ApplicationController
  before_action :set_furdo, only: [:show, :edit, :update, :destroy]

  # GET /furdos
  # GET /furdos.json
  def index
    @furdos = Furdo.all
  end

  # GET /furdos/1
  # GET /furdos/1.json
  def show
  end

  # GET /furdos/new
  def new
    @furdo = Furdo.new
  end

  # GET /furdos/1/edit
  def edit
  end

  # POST /furdos
  # POST /furdos.json
  def create
    @furdo = Furdo.new(furdo_params)

    respond_to do |format|
      if @furdo.save
        format.html { redirect_to @furdo, notice: 'Furdo was successfully created.' }
        format.json { render :show, status: :created, location: @furdo }
      else
        format.html { render :new }
        format.json { render json: @furdo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /furdos/1
  # PATCH/PUT /furdos/1.json
  def update
    respond_to do |format|
      if @furdo.update(furdo_params)
        format.html { redirect_to @furdo, notice: 'Furdo was successfully updated.' }
        format.json { render :show, status: :ok, location: @furdo }
      else
        format.html { render :edit }
        format.json { render json: @furdo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /furdos/1
  # DELETE /furdos/1.json
  def destroy
    @furdo.destroy
    respond_to do |format|
      format.html { redirect_to furdos_url, notice: 'Furdo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_furdo
      @furdo = Furdo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def furdo_params
      params.require(:furdo).permit(:client_name, :location)
    end
end
