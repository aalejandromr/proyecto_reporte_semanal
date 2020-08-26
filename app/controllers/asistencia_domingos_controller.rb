class AsistenciaDomingosController < ApplicationController
  before_action :set_asistencia_domingo, only: [:show, :edit, :update, :destroy]

  # GET /asistencia_domingos
  # GET /asistencia_domingos.json
  def index
    @asistencia_domingos = AsistenciaDomingo.all
  end

  # GET /asistencia_domingos/1
  # GET /asistencia_domingos/1.json
  def show
  end

  # GET /asistencia_domingos/new
  def new
    @asistencia_domingo = AsistenciaDomingo.new
  end

  # GET /asistencia_domingos/1/edit
  def edit
  end

  # POST /asistencia_domingos
  # POST /asistencia_domingos.json
  def create
    @asistencia_domingo = AsistenciaDomingo.new(asistencia_domingo_params)

    respond_to do |format|
      if @asistencia_domingo.save
        format.html { redirect_to @asistencia_domingo, notice: 'Asistencia domingo was successfully created.' }
        format.json { render :show, status: :created, location: @asistencia_domingo }
      else
        format.html { render :new }
        format.json { render json: @asistencia_domingo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /asistencia_domingos/1
  # PATCH/PUT /asistencia_domingos/1.json
  def update
    respond_to do |format|
      if @asistencia_domingo.update(asistencia_domingo_params)
        format.html { redirect_to @asistencia_domingo, notice: 'Asistencia domingo was successfully updated.' }
        format.json { render :show, status: :ok, location: @asistencia_domingo }
      else
        format.html { render :edit }
        format.json { render json: @asistencia_domingo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /asistencia_domingos/1
  # DELETE /asistencia_domingos/1.json
  def destroy
    @asistencia_domingo.destroy
    respond_to do |format|
      format.html { redirect_to asistencia_domingos_url, notice: 'Asistencia domingo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_asistencia_domingo
      @asistencia_domingo = AsistenciaDomingo.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def asistencia_domingo_params
      params.require(:asistencia_domingo).permit(:hnos_a, :hnos_i, :friends, :childrens)
    end
end
