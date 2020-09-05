class AsistenciaReunionEvangelistaController < ApplicationController
  before_action :set_asistencia_reunion_evangelistum, only: [:show, :edit, :update, :destroy]

  # GET /asistencia_reunion_evangelista
  # GET /asistencia_reunion_evangelista.json
  def index
    @asistencia_reunion_evangelista = AsistenciaReunionEvangelista.all
  end

  # GET /asistencia_reunion_evangelista/1
  # GET /asistencia_reunion_evangelista/1.json
  def show
  end

  # GET /asistencia_reunion_evangelista/new
  def new
    @asistencia_reunion_evangelistum = AsistenciaReunionEvangelista.new
    @asistencia_reunion_planificacion_id = params[:asistencia_reunion_planificacion_id]
  end

  # GET /asistencia_reunion_evangelista/1/edit
  def edit
  end

  # POST /asistencia_reunion_evangelista
  # POST /asistencia_reunion_evangelista.json
  def create
    @asistencia_reunion_evangelistum = AsistenciaReunionEvangelista.new(asistencia_reunion_evangelistum_params)

    respond_to do |format|
      if @asistencia_reunion_evangelistum.save
        format.html { redirect_to @asistencia_reunion_evangelistum, notice: 'Asistencia reunion evangelista was successfully created.' }
        format.json { render :show, status: :created, location: @asistencia_reunion_evangelistum }
      else
        format.html { render :new }
        format.json { render json: @asistencia_reunion_evangelistum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /asistencia_reunion_evangelista/1
  # PATCH/PUT /asistencia_reunion_evangelista/1.json
  def update
    respond_to do |format|
      if @asistencia_reunion_evangelistum.update(asistencia_reunion_evangelistum_params)
        format.html { redirect_to @asistencia_reunion_evangelistum, notice: 'Asistencia reunion evangelista was successfully updated.' }
        format.json { render :show, status: :ok, location: @asistencia_reunion_evangelistum }
      else
        format.html { render :edit }
        format.json { render json: @asistencia_reunion_evangelistum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /asistencia_reunion_evangelista/1
  # DELETE /asistencia_reunion_evangelista/1.json
  def destroy
    @asistencia_reunion_evangelistum.destroy
    respond_to do |format|
      format.html { redirect_to asistencia_reunion_evangelista_index_url, notice: 'Asistencia reunion evangelista was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_asistencia_reunion_evangelistum
      @asistencia_reunion_evangelistum = AsistenciaReunionEvangelista.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def asistencia_reunion_evangelistum_params
      params.require(:asistencia_reunion_evangelistum).permit(:hnos_a, :hnos_i, :friends, :childrens, :ofrenda, :aceptados, :personas_en_discipulado, :leccion, :candidatos_bautismo, :visitas, :personas_ministradas, :rec)
    end
end
