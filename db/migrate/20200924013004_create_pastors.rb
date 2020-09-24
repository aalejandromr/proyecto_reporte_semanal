class CreatePastors < ActiveRecord::Migration[6.0]
  def change
    create_table :pastors do |t|
      t.string :name

      t.timestamps
    end
  end
end
