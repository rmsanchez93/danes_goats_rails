class GoatsController < ApplicationController

    def index 
        @goats = Goat.all
    end

    def show
        @goat = Goat.find(params[:id])
        # byebug
    end

    def new 
        @goat = Goat.new
        @people = Person.all
    end

    def create 
        @goat = Goat.new(goat_params)
        @goat.person_id = Person.first.id
        @goat.save
        redirect_to goats_path
    end

    def goat_params
                # whitelisting and making sure the column name match our form submission
        params.require(:goat).permit(:name, :age)
    end
end


# class KittensController < ApplicationController
#     def index 
#         @kittens = Kitten.all
#     end

#     def show 
#         @kitten = Kitten.find(params[:id])
#         # byebug
#     end

#     def new 
#         @kitten = Kitten.new
#     end

#     def create 
#         @kitten = Kitten.create(name: params[:kitten][:name], )
#         # byebug
#         redirect_to kittens_path
#     end

#     def kitten_params
#         # whitelisting and making sure the column name match our form submission
#         params.require(:kitten).permit(:name, :age, :breed, :personality)
#     end
# end
