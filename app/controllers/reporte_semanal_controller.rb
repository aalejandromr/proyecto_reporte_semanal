class ReporteSemanalController < ApplicationController


  def index

  end

  def create

  end

  def edit

  end

  def show

  end

  def destroy

  end


  private

  def reporte_semanal_params
    params.require(:reporte_semanal).permit(:asistencia_reunion_planificacion, :asistencia_reunion_evangelist, :asistencia_domingo)
  end
end