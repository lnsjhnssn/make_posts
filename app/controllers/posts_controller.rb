class PostsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    @posts = Post.all
    render json: @posts  
  end
  def create
    @post = Post.create(message: params[:message], link: params[:link])
    render 'posts/create.jbuilder'
  end
end
