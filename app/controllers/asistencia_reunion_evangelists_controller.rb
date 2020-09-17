class AsistenciaReunionEvangelistsController < ApplicationController
  before_action :set_asistencia_reunion_evangelist, only: [:show, :edit, :update, :destroy]

  # GET /asistencia_reunion_evangelists
  # GET /asistencia_reunion_evangelists.json
  def index
    @asistencia_reunion_evangelists = AsistenciaReunionEvangelist.all
  end

  # GET /asistencia_reunion_evangelists/1
  # GET /asistencia_reunion_evangelists/1.json
  def show
  end

  # GET /asistencia_reunion_evangelists/new
  def new
    @asistencia_reunion_evangelist = AsistenciaReunionEvangelist.new
    @asistencia_reunion_planificacion_id = params[:asistencia_reunion_planificacion_id]
  end

  # GET /asistencia_reunion_evangelists/1/edit
  def edit
    @asistencia_reunion_planificacion_id = asistencia_reunion_planificacion[:asistencia_reunion_planificacion_id]
  end

  # POST /asistencia_reunion_evangelists
  # POST /asistencia_reunion_evangelists.json
  def create
    @asistencia_reunion_evangelist = AsistenciaReunionEvangelist.new(asistencia_reunion_evangelist_params)
    if @asistencia_reunion_evangelist.save
      redirect_to controller: 'asistencia_domingos', action: 'new', asistencia_reunion_evangelist_id: @asistencia_reunion_evangelist.id, asistencia_reunion_planificacion_id: asistencia_reunion_planificacion[:asistencia_reunion_planificacion_id], notice: 'Asistencia reunion evangelist was successfully created.'
      return
    end

    respond_to do |format|
      if !@asistencia_reunion_evangelist.save
        format.html { render :new }
        format.json { render json: @asistencia_reunion_evangelist.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /asistencia_reunion_evangelists/1
  # PATCH/PUT /asistencia_reunion_evangelists/1.json
  def update
    if @asistencia_reunion_evangelist.update(asistencia_reunion_evangelist_params)
      redirect_to controller: 'asistencia_domingos', action: 'new', asistencia_reunion_evangelist_id: @asistencia_reunion_evangelist.id, notice: 'Asistencia reunion evangelist was successfully updated.'
      return
    end

    respond_to do |format|
      if !@asistencia_reunion_evangelist.update(asistencia_reunion_evangelist_params)
        format.html { render :edit }
        format.json { render json: @asistencia_reunion_evangelist.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /asistencia_reunion_evangelists/1
  # DELETE /asistencia_reunion_evangelists/1.json
  def destroy
    @asistencia_reunion_evangelist.destroy
    respond_to do |format|
      format.html { redirect_to asistencia_reunion_evangelists_url, notice: 'Asistencia reunion evangelist was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_asistencia_reunion_evangelist
      @asistencia_reunion_evangelist = AsistenciaReunionEvangelist.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def asistencia_reunion_evangelist_params
      params.require(:asistencia_reunion_evangelist).permit(:hnos_a, :hnos_i, :friends, :childrens, :ofrenda, :aceptados, :personas_en_discipulado, :leccion, :candidatos_bautismo, :visitas, :personas_ministradas, :rec)
    end

    def asistencia_reunion_planificacion
      params.require(:asistencia_reunion_evangelist).permit(:asistencia_reunion_planificacion_id)
    end
end
