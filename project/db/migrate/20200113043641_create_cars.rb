class CreateCars < ActiveRecord::Migration[6.0]
  def change
    create_table :cars do |t|
      t.string :name, limit: 50
      t.references :brand, null: false, foreign_key: true
      t.references :model, null: false, foreign_key: true
      t.references :version, null: false, foreign_key: true
      t.references :car_type, null: false, foreign_key: true
      t.decimal :rto_price
      t.decimal :on_road_price
      t.decimal :total_price

      t.timestamps
    end
  end
end
