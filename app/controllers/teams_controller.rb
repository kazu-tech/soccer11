class TeamsController < ApplicationController
  protect_from_forgery with: :null_session 
  protect_from_forgery except: :create
  def index
    @teams = Team.find(1)
    @posts = Post.all
  end
  
  def edit
  end

  def new
    @tems = Team.new
  end

  def update
    if current_user.update(team_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  def create
    @products = Product.where('name LIKE(?)', "%#{params[:keyword]}%")
    redirect_to 'index'
  end

  private

  def team_params
    params.require(:user).permit(:name,)
  end
end
