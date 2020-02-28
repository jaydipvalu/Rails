class CreateStandards < ActiveRecord::Migration[6.0]
  def change
    create_table :standards do |t|
      t.staing :name

      t.timestamps
    end
  end
end
