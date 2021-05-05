class BooksController < ApplicationController

    def show
        @book = Book.find_by_id(params[:id])
    end

    def create
        #binding.pry
        @book = Book.create(book_params)
        @book.add_to_book_total
        redirect_to book_path(@book)
    end

    private

    def book_params
        params.require(:book).permit(:title, :scholar_id, :field_id) 
    end

end
