class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name, limit: 50
      t.date :brith_date
      t.string :email
      t.string :phone, limit: 15
      t.string :gebder, limit: 1
      t.string :pincode
      t.string :city, limit: 50
      t.string :state, limit: 50
      t.string :country, limit: 50
      t.string :address, limit: 50

      t.timestamps
    end
  end
end
