class GoatsController < ApplicationController
    def index
        @goats = Goat.all 
    end 
    def show
        @goats = Person.find_by(params[:name]).goats 
    
    end 
end 