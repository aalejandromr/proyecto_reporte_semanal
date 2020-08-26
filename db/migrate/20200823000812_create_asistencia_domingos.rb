class CreateAsistenciaDomingos < ActiveRecord::Migration[6.0]
  def change
    create_table :asistencia_domingos do |t|
      t.integer :hnos_a
      t.integer :hnos_i
      t.integer :friends
      t.integer :childrens

      t.timestamps
    end
  end
end
