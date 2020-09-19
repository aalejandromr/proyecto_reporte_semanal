class DigestReporteSemanalsController < ApplicationController
  before_action :set_digest_reporte_semanal, only: [:show, :edit, :update, :destroy]

  # GET /digest_reporte_semanals
  # GET /digest_reporte_semanals.json
  def index
    @digest_reporte_semanals = []
  end

  # GET /digest_reporte_semanals/1
  # GET /digest_reporte_semanals/1.json
  def show
  end

  # GET /digest_reporte_semanals/new
  def new
    @digest_reporte_semanal = DigestReporteSemanal.new
  end

  # GET /digest_reporte_semanals/1/edit
  def edit
  end

  # POST /digest_reporte_semanals
  # POST /digest_reporte_semanals.json
  def create
    @digest_reporte_semanal = DigestReporteSemanal.new(digest_reporte_semanal_params)
    asistencia_reunion_planification = AsistenciaReunionPlanificacion.where("created_at > :desde", desde: '2020-09-17').where("created_at < :hasta", hasta: '2020-09-17')
    asistencia_dia_viernes = AsistenciaReunionEvangelist.where("created_at > :desde", desde: '2020-09-17').where("created_at < :hasta", hasta: '2020-09-17')
    asistencia_dia_domingo = AsistenciaDomingo.where("created_at > :desde", desde: '2020-09-17').where("created_at < :hasta", hasta: '2020-09-17')


  end

  # PATCH/PUT /digest_reporte_semanals/1
  # PATCH/PUT /digest_reporte_semanals/1.json
  def update
    respond_to do |format|
      if @digest_reporte_semanal.update(digest_reporte_semanal_params)
        format.html { redirect_to @digest_reporte_semanal, notice: 'Digest reporte semanal was successfully updated.' }
        format.json { render :show, status: :ok, location: @digest_reporte_semanal }
      else
        format.html { render :edit }
        format.json { render json: @digest_reporte_semanal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /digest_reporte_semanals/1
  # DELETE /digest_reporte_semanals/1.json
  def destroy
    @digest_reporte_semanal.destroy
    respond_to do |format|
      format.html { redirect_to digest_reporte_semanals_url, notice: 'Digest reporte semanal was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_digest_reporte_semanal
      @digest_reporte_semanal = DigestReporteSemanal.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def digest_reporte_semanal_params
      params.fetch(:digest_reporte_semanal, {})
    end
end
