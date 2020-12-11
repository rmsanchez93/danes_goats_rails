class GoatsController < ApplicationController
    # Error 2: NoMethodError in Goats#index
    # Step 2: create an #index method in controller
    def index
        @goats = Goat.all
    end

    # Step 5: create a #show method in controller
    def show
        @goat = Goat.find(params[:id])
    end

    # Step 8: create a #new method in controller
    def new
        @goat = Goat.new
    end

    def create
        @goat = Goat.create(goat_params)
        redirect_to goats_path
    end

    def goat_params
        params.require(:goat).permit(:name, :age)
    end


end
