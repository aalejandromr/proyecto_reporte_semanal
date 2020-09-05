class AddReconciliosToAsistencia < ActiveRecord::Migration[6.0]
  def change
    add_column :asistencia_domingos, :rec, :integer
    add_column :asistencia_domingos, :conv, :integer

    add_column :asistencia_reunion_evangelista, :rec, :integer
  end
end
