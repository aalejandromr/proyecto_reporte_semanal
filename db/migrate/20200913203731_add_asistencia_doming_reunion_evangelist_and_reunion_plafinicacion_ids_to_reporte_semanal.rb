class AddAsistenciaDomingReunionEvangelistAndReunionPlafinicacionIdsToReporteSemanal < ActiveRecord::Migration[6.0]
  def change
    add_reference :reporte_semanal_celulas, :asistencia_domingo, index: { name: 'index_reporte_semanal_domingo_id' }
    add_foreign_key :reporte_semanal_celulas, :asistencia_domingos

    add_reference :reporte_semanal_celulas, :asistencia_reunion_evangelist, index: { name: 'index_repote_semanal_reunion_evangelist_id' }
    add_foreign_key :reporte_semanal_celulas, :asistencia_reunion_evangelists

    add_reference :reporte_semanal_celulas, :asistencia_reunion_planificacion, index: { name: 'index_reporte_semanal_reunion_planificacion' }
    add_foreign_key :reporte_semanal_celulas, :asistencia_reunion_planificacions
  end
end
