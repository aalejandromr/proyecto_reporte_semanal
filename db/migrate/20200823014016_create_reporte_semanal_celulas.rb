class CreateReporteSemanalCelulas < ActiveRecord::Migration[6.0]
  def change
    create_table :reporte_semanal_celulas do |t|
      t.string :lider
      t.string :anfitrion
      t.references :sector, null: false, foreign_key: true
      t.boolean :reunion_evaluacion
      t.boolean :visita_supervisor
      t.references :supervisor, null: false, foreign_key: true

      t.timestamps
    end
  end
end
