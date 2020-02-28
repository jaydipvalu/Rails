class CreateBooksAuthors < ActiveRecord::Migration[6.0]
  def change
    create_table :books_authors do |t|
      t.references :books, null: false, foreign_key: true
      t.references :authors, null: false, foreign_key: true

      t.timestamps
    end
  end
end
