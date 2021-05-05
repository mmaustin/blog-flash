class Field < ApplicationRecord
    has_many :books
    has_many :scholars, through: :books
end
