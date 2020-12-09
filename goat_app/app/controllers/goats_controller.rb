class GoatsController < ApplicationController

     def index 
          @goats = Goat.all
     end

     def show
          @goat.find(params[:id])
     end

     def new 
          @goat = Goat.new
     end

     def create
          @goat = Goat.new
          @goat.name = params[:name]
          @goat.age = params[:age]
          @goat.person_id = params[:person_id]
          @goat.save
          redirect_to goat_path(@goats)  ##??
     end

     def edit
          @goat = Goat.find(params[:id])
     end

     def update
          @goat = Goat.find(params[:id])
          @goat.update(name: params[:goat][:name], age: params[:goat][:age], person_id: params[:goat][:person_id])
          redirect_to goat_path(@goats)
     end


end
