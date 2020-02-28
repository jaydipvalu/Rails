class CreateTeachersStandards < ActiveRecord::Migration[6.0]
  def change
    create_table :teachers_standards do |t|
      t.references :teachers, null: false, foreign_key: true
      t.references :standards, null: false, foreign_key: true

      t.timestamps
    end
  end
end
