class GoatsController < ApplicationController

  before_action :set_goat, only: [:show]


  def index
    @dane = Person.find_by(name: "Dane")
    @danes_goats = Goat.all.select{|goat| goat.person_id == @dane.id}
  end

  def show
  end

  def new
  end

  def create
    Goat.create(name: params[:goat][:name], age: params[:goat][:age], person_id: params[:goat][:person_id])
    redirect_to "/goats/all"
  end

  def all
    @goats = Goat.all
  end

  private

    def set_goat
      @goat = Goat.find(params[:id])
    end

end
