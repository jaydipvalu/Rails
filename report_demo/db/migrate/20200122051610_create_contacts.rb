class CreateContacts < ActiveRecord::Migration[6.0]
  def change
    create_table :contacts do |t|
      t.string :contact, limit: 100

      t.timestamps
    end
  end
end
