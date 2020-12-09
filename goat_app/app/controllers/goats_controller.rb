class GoatsController < ApplicationController
    def index 
        @goats = Goat.all
    end 

    def show 
        @goat = Goat.find(params[:id])
    end 

    def new
        @goat = Goat.new 
    end 

    def create
        @goat = Goat.new(params[:name][:age])
        @goat.person_id = Person.first.id 
        @goat.save 

        redirect_to goat_path
    end 
end
