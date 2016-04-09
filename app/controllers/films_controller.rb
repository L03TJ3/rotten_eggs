class FilmsController < ApplicationController
  def index
     @films = Film.all
  end

  def show
    @films = Film.find( params[:id] )
  end
end
