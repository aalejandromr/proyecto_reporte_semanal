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

    desde = time_value(digest_reporte_semanal_params, 'desde')
    hasta = time_value(digest_reporte_semanal_params, 'hasta')
    curated_params = {}
    curated_params[:desde] = desde
    curated_params[:hasta] = hasta
    curated_params[:obversaciones] = digest_reporte_semanal_params[:obversaciones]
    @digest_reporte_semanal = DigestReporteSemanal.new(curated_params)
    @reporte_semanal_celula = ReporteSemanalCelula.where("created_at > :desde", desde: @digest_reporte_semanal.desde).where("created_at < :hasta", hasta: @digest_reporte_semanal.hasta)

    respond_to do |format|
      format.html
      format.xlsx {
        response.headers['Content-Disposition'] = 'attachment; filename="Reporte semanal de supervisor de celula.xlsx"'
      }
    end

    # Axlsx::Package.new do |p|
    #   p.workbook.add_worksheet(:name => "Pie Chart") do |sheet|
    #     sheet.add_row ["Simple Pie Chart"]
    #     %w(first second third).each { |label| sheet.add_row [label, rand(24)+1] }
    #     sheet.add_chart(Axlsx::Pie3DChart, :start_at => [0,5], :end_at => [10, 20], :title => "example 3: Pie Chart") do |chart|
    #       chart.add_series :data => sheet["B2:B4"], :labels => sheet["A2:A4"],  :colors => ['FF0000', '00FF00', '0000FF']
    #     end
    #   end
    #   p.serialize('simple.xlsx')
    # end
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
      params.fetch(:digest_reporte_semanal).permit(:desde, :hasta, :obversaciones)
    end

    def time_value(hash, field)
      Time.zone.local(*(1..5).map { |i| hash["#{field}(#{i}i)"] })
    end
end
