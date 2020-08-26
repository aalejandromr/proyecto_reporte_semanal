class CreateAsistenciaReunionPlanificacions < ActiveRecord::Migration[6.0]
  def change
    create_table :asistencia_reunion_planificacions do |t|
      t.integer :miembros_nucleo
      t.integer :miembros_apoyo
      t.string :reflexion_semana
      t.boolean :meta_amigos_alcanzada
      t.boolean :meta_amigos_establecida
      t.timestamp :hora_reunion
      t.float :ofrenda

      t.timestamps
    end
  end
end
