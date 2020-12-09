class PeopleController < ApplicationController

    def index
        @people = Person.all
    end

    def new
        @person = Person.new
    end

    def create
        @person = Person.create(name: params[:person][:name], age: params[:person][:age])
        redirect_to people_path
    end

end