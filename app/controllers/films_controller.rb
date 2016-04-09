class FilmsController < ApplicationController
  def index
     @films = Film.all
  end

  def show
    @film = Film.find( params[:id] )
    @posts = @film.posts
  end


end
