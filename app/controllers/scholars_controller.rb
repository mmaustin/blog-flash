class ScholarsController < ApplicationController
    
    def index
        @scholars = Scholar.all 
    end

    def show
        @scholar = Scholar.find_by_id(params[:id])
    end

    def new
        @scholar = Scholar.new 
    end

    def create 
        @scholar = Scholar.create(scholar_params)
        redirect_to scholar_path(@scholar)
    end
    
    private

    def scholar_params
        params.require(:scholar).permit(:name, :email, :password, :education, :current_position, :total_books)
    end

end
