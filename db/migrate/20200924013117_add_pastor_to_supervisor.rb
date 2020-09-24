class AddPastorToSupervisor < ActiveRecord::Migration[6.0]
  def change
    add_reference :supervisors, :pastor, index: true
    add_foreign_key :supervisors, :pastors
  end
end
