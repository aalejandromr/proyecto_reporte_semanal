class AddCelulaIdInsteadOfSectorIdInReporteSemanalCelulas < ActiveRecord::Migration[6.0]
  def change
    remove_column :reporte_semanal_celulas, :sector_id
    add_column :reporte_semanal_celulas, :celula_id, :integer
    add_foreign_key :reporte_semanal_celulas, :celulas
  end
end
