class CreateReports < ActiveRecord::Migration[6.0]
  def change
    create_table :reports do |t|
      t.string :name, limit: 100
      t.integer :user_id
      t.integer :reportble_id
      t.string :reportble_type

      t.timestamps
    end
  end
end
