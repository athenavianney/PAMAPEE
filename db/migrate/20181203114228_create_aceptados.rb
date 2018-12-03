class CreateAceptados < ActiveRecord::Migration[5.2]
  def change
    create_table :aceptados do |t|
      t.integer :grupo
      t.integer :alumno

      t.timestamps
    end
  end
end
