class CreateTutors < ActiveRecord::Migration[5.2]
  def change
    create_table :tutors do |t|

      t.references :usuario , foreign_key: true, null: false

    end
  end
end
