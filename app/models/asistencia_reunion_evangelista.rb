class AsistenciaReunionEvangelista < ApplicationRecord
  belongs_to :sector
  has_one :reporte_semanal_celula
end