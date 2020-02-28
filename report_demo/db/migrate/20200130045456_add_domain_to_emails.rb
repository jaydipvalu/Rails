class AddDomainToEmails < ActiveRecord::Migration[6.0]
  def change
    add_column :emails, :domain, :string
  end
end
