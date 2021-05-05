class CreateBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :books do |t|
      t.string :title
      t.integer :scholar_id
      t.integer :field_id

      t.timestamps
    end
  end
end
