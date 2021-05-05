class Scholar < ApplicationRecord
    has_secure_password
    has_many :books
    has_many :fields, through: :books

    #accepts_nested_attributes_for :fields

end
