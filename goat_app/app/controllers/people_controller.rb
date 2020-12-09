class PeopleController < ApplicationController

     def index
          @people = Person.all
     end

     def show 
          @person.find(params[:id])
     end 

     def new 
          @person = Person.new
     end
     

end
