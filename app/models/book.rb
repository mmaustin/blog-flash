class Book < ApplicationRecord
    belongs_to :scholar 
    belongs_to :field 

    def add_to_book_total
        self.scholar.total_books += 1
        self.scholar.save
    end

end
