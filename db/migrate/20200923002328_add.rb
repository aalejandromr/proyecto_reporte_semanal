class Add < ActiveRecord::Migration[6.0]
  def change
    add_column :reporte_semanal_celulas, :observaciones, :text
    add_column :asistencia_domingos, :ofrenda_especial_cosecha, :float
  end
end
