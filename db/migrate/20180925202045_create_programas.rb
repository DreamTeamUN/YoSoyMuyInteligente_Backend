class CreateProgramas < ActiveRecord::Migration[5.2]
  def change
    create_table :programas do |t|

      t.string :nombre, null: false

    end
  end
end
