class CreateAsistenciaReunionEvangelists < ActiveRecord::Migration[6.0]
  def change
    create_table :asistencia_reunion_evangelists do |t|
      t.integer :hnos_a
      t.integer :hnos_i
      t.integer :friends
      t.integer :childrens
      t.float :ofrenda
      t.integer :aceptados
      t.integer :personas_en_discipulado
      t.integer :leccion
      t.integer :candidatos_bautismo
      t.integer :visitas
      t.integer :personas_ministradas
      t.integer :rec

      t.timestamps
    end
  end
end
