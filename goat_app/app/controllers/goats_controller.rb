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
        jake = Person.all.first
        @goat = Goat.create(name: params[:goat][:name], age: params[:goat][:age], person_id: jake.id)
        redirect_to goats_path
    end
end