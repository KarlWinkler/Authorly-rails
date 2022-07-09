class AddAuthorForeignKeyToBook < ActiveRecord::Migration[7.0]
  def change
    remove_column :books, :author
    add_column :books, :author_id, :integer
    add_foreign_key :books, :authors, column: :author_id
  end
end
