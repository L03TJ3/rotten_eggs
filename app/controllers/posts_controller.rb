class PostsController < ApplicationController
  before_action :set_film

  def new
    @post = Post.new
  end

  def create
    post_params = params.require( :post ).permit( :name, :title, :content, :film_id)

    @post = Post.new( post_params )
    @post.film = @film

    if @post.save
      redirect_to @film
    else
      render :new
    end
  end

  protected

  def set_film
    @film = Film.find(params[:film_id])
  end
end
