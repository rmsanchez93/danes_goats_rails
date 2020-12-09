class PeopleController < ApplicationController

     def index
          @people = Person.all
     end

     def show 
          @person.find(params[:id])
     end 


end
