class CreateCelulas < ActiveRecord::Migration[6.0]
  def change
    create_table :celulas do |t|
      t.string :name
      t.references :sector, index: true , foreign_key: true
      t.timestamps
    end
  end
end
