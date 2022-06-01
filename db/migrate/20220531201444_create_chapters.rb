class CreateChapters < ActiveRecord::Migration[7.0]
  def change
    create_table :chapters do |t|
      t.string :contents
      t.integer :index
      t.references :book

      t.timestamps
    end
  end
end
