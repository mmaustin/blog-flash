class AddTotalBooksToScholars < ActiveRecord::Migration[6.1]
  def change
    add_column :scholars, :total_books, :integer
  end
end
