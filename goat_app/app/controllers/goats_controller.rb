class GoatsController < ApplicationController
    def index
        @goats = Goat.all 
    end

    def show
        @goat = Goat.find(params[:id])
    end

    def new
        @goat = Goat.new
        @people = Person.all
    end

    def create
        @goat = Goat.create(goat_params)
        redirect_to goats_path
    end

    def goat_params
        params.require(:goat).permit(:name, :age, :person_id, :img)
    end
end
