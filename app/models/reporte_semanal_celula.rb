class ReporteSemanalCelula < ApplicationRecord
  belongs_to :celula
  belongs_to :supervisor
  belongs_to :asistencia_reunion_planificacion
  belongs_to :asistencia_reunion_evangelist
  belongs_to :asistencia_domingo
end
