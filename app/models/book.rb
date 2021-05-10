class Book < ApplicationRecord
    belongs_to :scholar 
    belongs_to :field 
    #accepts_nested_attributes_for :field


    def field=(field_attribute)
        #field_attributes.each do |field_attribute|
          field = Field.find_or_create_by(name: field_attribute.values[0])
          #binding.pry
          self.field_id = field.id
          self.save
          #self.field = field_attribute let's not do this ever again
        #end
    end


    def add_to_book_total
        self.scholar.total_books += 1
        self.scholar.save
    end

end
