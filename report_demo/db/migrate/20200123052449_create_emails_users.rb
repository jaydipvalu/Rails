class CreateEmailsUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :emails_users do |t|
      t.references :email, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
