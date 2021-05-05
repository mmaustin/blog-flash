class CreateScholars < ActiveRecord::Migration[6.1]
  def change
    create_table :scholars do |t|
      t.string :name
      t.string :email
      t.string :password_digest
      t.string :education
      t.string :current_position
      t.integer :total_books

      t.timestamps
    end
  end
end
