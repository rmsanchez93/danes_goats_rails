class GoatsController < ApplicationController

  def show
    @goat = Goat.find(params[:id])
    @person = Person.find(@goat.person_id)
  end

  def index
    @goats = Goat.all
  end

  def new
    @goat = Goat.new
  end

  def create
    @goat = Goat.create(goat_params)
    redirect_to goats_path
  end

  private 

  def goat_params
    params.require(:goat).permit(:name, :age, :person_id)

  end
end