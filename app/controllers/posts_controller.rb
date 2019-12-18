class PostsController < ApplicationController
  def index
    #@team = Team.all
    #@post = Post.find(1)
    @posts = Post.all.order(id: "DESC")
  end

  def new
    @post = Post.new
  end

  def edit
    #@post = Post.find(params[:id])
    @post = Post.find(1)
  end

  def create
    @post = Post.find(1)
    Post.create(post_params)
    #@post = @team.posts.new(post_params)
  end

  def show
    @post = Post.find(params[:id])
    @team = Team.find(1)
    # @post = Post.find(1)
  end

  

  private
  def post_params
    #params.require(:post)
    params.permit(:date, :match, :result, :formation, :num11, :num10, :num9, :num8, :num7, :num6, :num5, :num4, :num3, :num2, :num1)
  end
end
