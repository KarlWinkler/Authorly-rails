class CreateAuthors < ActiveRecord::Migration[7.0]
  def change
    create_table :authors do |t|
      t.string :email, unique: true, null: false
      t.string :name, null: false

      t.timestamps
    end
  end
end
