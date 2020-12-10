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
        @goat = Goat.new
        @goat.name = params[:name]
        @goat.age = params[:age]
        @goat.person_id = Person.first.id
        @goat.save 

        redirect_to goats_path
    end 

    def goat_params
        
    end 
end
