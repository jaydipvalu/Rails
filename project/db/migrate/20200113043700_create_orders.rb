class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.references :user, null: false, foreign_key: true
      t.decimal :on_road_price
      t.decimal :rto_price
      t.decimal :total_price
      t.string :payment_methods
      t.string :payment_id
      t.string :status

      t.timestamps
    end
  end
end
