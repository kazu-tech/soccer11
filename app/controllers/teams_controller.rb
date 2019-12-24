class TeamsController < ApplicationController
  protect_from_forgery with: :null_session 
  protect_from_forgery except: :create
  def index
    @posts = Post.all
  end
  
  def edit
    @team = Team.find(params[:id])
  end

  def new
    @team = Team.new
  end

  def update
    if current_user.update(team_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  def create
    @team = Team.find(params[:id])
    redirect_to 'index'
  end

  def show
    @posts = Post.all
  end

  private

  def team_params
    params.require(:team).permit(:name, :email)
  end
end
