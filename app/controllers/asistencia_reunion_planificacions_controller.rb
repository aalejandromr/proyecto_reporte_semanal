class AsistenciaReunionPlanificacionsController < ApplicationController
  before_action :set_asistencia_reunion_planificacion, only: [:show, :edit, :update, :destroy]

  # GET /asistencia_reunion_planificacions
  # GET /asistencia_reunion_planificacions.json
  def index
    @asistencia_reunion_planificacions = AsistenciaReunionPlanificacion.all
  end

  # GET /asistencia_reunion_planificacions/1
  # GET /asistencia_reunion_planificacions/1.json
  def show
  end

  # GET /asistencia_reunion_planificacions/new
  def new
    @asistencia_reunion_planificacion = AsistenciaReunionPlanificacion.new
  end

  # GET /asistencia_reunion_planificacions/1/edit
  def edit
  end

  # POST /asistencia_reunion_planificacions
  # POST /asistencia_reunion_planificacions.json
  def create
    @asistencia_reunion_planificacion = AsistenciaReunionPlanificacion.new(asistencia_reunion_planificacion_params)

    if @asistencia_reunion_planificacion.save
      redirect_to controller: 'asistencia_reunion_evangelists', action: 'new', asistencia_reunion_planificacion_id: @asistencia_reunion_planificacion.id, notice: 'Asistencia reunion planificacion was successfully created.'
      return
    end

    respond_to do |format|
      if !@asistencia_reunion_planificacion.save
        format.html { render :new }
        format.json { render json: @asistencia_reunion_planificacion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /asistencia_reunion_planificacions/1
  # PATCH/PUT /asistencia_reunion_planificacions/1.json
  def update
    if @asistencia_reunion_planificacion.update(asistencia_reunion_planificacion_params)
      redirect_to controller: 'asistencia_reunion_evangelists', action: 'edit', asistencia_reunion_planificacion_id: @asistencia_reunion_planificacion.id, notice: 'Asistencia reunion planificacion was successfully updated.'
      return
    end

    respond_to do |format|
      if !@asistencia_reunion_planificacion.update(asistencia_reunion_planificacion_params)
        format.html { render :edit }
        format.json { render json: @asistencia_reunion_planificacion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /asistencia_reunion_planificacions/1
  # DELETE /asistencia_reunion_planificacions/1.json
  def destroy
    @asistencia_reunion_planificacion.destroy
    respond_to do |format|
      format.html { redirect_to asistencia_reunion_planificacions_url, notice: 'Asistencia reunion planificacion was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_asistencia_reunion_planificacion
      @asistencia_reunion_planificacion = AsistenciaReunionPlanificacion.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def asistencia_reunion_planificacion_params
      params.require(:asistencia_reunion_planificacion).permit(:miembros_nucleo, :miembros_apoyo, :reflexion_semana, :meta_amigos_alcanzada, :meta_amigos_establecida, :hora_reunion, :ofrenda)
    end
end
