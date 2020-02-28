class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.date :order_date
      t.string :total_price_decimal
      t.integer :user_id

      t.timestamps
    end
  end
end
