class ReporteSemanalCelulasController < ApplicationController
  before_action :set_reporte_semanal_celula, only: [:show, :edit, :update, :destroy]

  # GET /reporte_semanal_celulas
  # GET /reporte_semanal_celulas.json
  def index
    @reporte_semanal_celulas = ReporteSemanalCelula.all
  end

  # GET /reporte_semanal_celulas/1
  # GET /reporte_semanal_celulas/1.json
  def show
  end

  # GET /reporte_semanal_celulas/new
  def new
    @reporte_semanal_celula = ReporteSemanalCelula.new
    @asistencia_domingo_id = params[:asistencia_domingo_id]
  end

  # GET /reporte_semanal_celulas/1/edit
  def edit
  end

  # POST /reporte_semanal_celulas
  # POST /reporte_semanal_celulas.json
  def create
    @reporte_semanal_celula = ReporteSemanalCelula.new(reporte_semanal_celula_params)
    @asistencia_domingo_id = params[:asistencia_domingo_id]
    if @reporte_semanal_celula.save
      redirect_to controller: 'success', action: 'index', lider: @reporte_semanal_celula.lider.name
      return
    end
    respond_to do |format|
      if !@reporte_semanal_celula.save
        format.html { render :new }
        format.json { render json: { }, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /reporte_semanal_celulas/1
  # PATCH/PUT /reporte_semanal_celulas/1.json
  def update
    respond_to do |format|
      if @reporte_semanal_celula.update(reporte_semanal_celula_params)
        format.html { redirect_to @reporte_semanal_celula, notice: 'Reporte semanal celula was successfully updated.' }
        format.json { render :show, status: :ok, location: @reporte_semanal_celula }
      else
        format.html { render :edit }
        format.json { render json: @reporte_semanal_celula.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reporte_semanal_celulas/1
  # DELETE /reporte_semanal_celulas/1.json
  def destroy
    @reporte_semanal_celula.destroy
    respond_to do |format|
      format.html { redirect_to reporte_semanal_celulas_url, notice: 'Reporte semanal celula was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reporte_semanal_celula
      @reporte_semanal_celula = ReporteSemanalCelula.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def reporte_semanal_celula_params
      params.require(:reporte_semanal_celula).permit(:lider, :anfitrion, :celula_id, :reunion_evaluacion, :visita_supervisor, :supervisor_id)
    end
end
