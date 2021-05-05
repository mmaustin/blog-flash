class RemoveTotoalBooksFromScholars < ActiveRecord::Migration[6.1]
  def change
    remove_column :scholars, :totoal_books, :integer
  end
end
