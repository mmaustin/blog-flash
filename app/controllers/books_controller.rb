class BooksController < ApplicationController

    def index
        if params[:scholar_id]
            @books = Scholar.find_by_id(params[:scholar_id]).books
        else
            @books = Book.all
        end
    end

    def show
        if params[:scholar_id]
            scholar = Scholar.find_by_id(params[:scholar_id])
            @book =  scholar.books.find_by_id(params[:id])
        else
            @book = Book.find_by_id(params[:id])
        end
    end

    def new
        if params[:scholar_id]
            @scholar = Scholar.find_by_id(params[:scholar_id])
            #@book = @scholar.books.build
        else
            @book = Book.new
        end
    end

    def create
        if params[:book][:field_id] != ""
        #binding.pry
            @book = Book.create(title: params[:book][:title], scholar_id: params[:book][:scholar_id], field_id: params[:book][:field_id])
            @book.add_to_book_total
            redirect_to book_path(@book)
        else
            @book = Book.create(book_params)
        #@book.field = params[:book][:field]
        #@book.save
            @book.add_to_book_total
            redirect_to book_path(@book)
        end
    end

    private

    def book_params
        params.require(:book).permit(:title, :scholar_id, :field_id, field: [:name]) 
    end

end
