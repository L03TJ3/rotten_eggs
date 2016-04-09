class FilmsController < ApplicationController
  def index
     @films = Film.all
  end

  def show
    @film = Film.find( params[:id] )
    @posts = @film.posts
  end

  def new
    @post = Post.new
  end

  def create
    post_params = params.require( :post ).permit( :name, :title, :content)

    @post = Post.new( post_params )

    if @post.save
      redirect_to 'new'
    else
      render 'new'
    end
  end
end
