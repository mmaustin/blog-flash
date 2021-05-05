class FieldsController < ApplicationController

    def index
        @fields = Field.all
    end

    def show
        @field = Field.find_by_id(params[:id])
        #@book = @field.books.build(scholar_id: session[:user_id]) this will allow for
        #creating of a book with the appropriate fields once i set up the signup/login/session
        #features
    end

    def new
        @field = Field.new
    end

    def create
        @field = Field.create(field_params)
        redirect_to fields_path
    end

    private
    
    def field_params
        params.require(:field).permit(:name)
    end

end
