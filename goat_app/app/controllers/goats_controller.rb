class GoatsController < ApplicationController
    def index
      @goats = Goat.all 
     
    end

    def show
        @goats = Goat.find(params[:id])
    end
end
