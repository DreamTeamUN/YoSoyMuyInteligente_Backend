class CreateDocenteProgramas < ActiveRecord::Migration[5.2]
  def change
    create_table :docente_programas do |t|

      t.references :docente , foreign_key: true, null: false
      t.references :programa , foreign_key: true, null: false

    end
  end
end
