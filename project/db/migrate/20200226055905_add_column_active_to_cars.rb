class AddColumnActiveToCars < ActiveRecord::Migration[6.0]
  def change
    add_column :cars, :active, :boolean
  end
end
