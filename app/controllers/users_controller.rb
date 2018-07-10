class UsersController < ApplicationController

  before_action :fetch_user, only: [:show]

  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    redirect_to @user
  end

  #will delete index page, simply here to make sure our users are being created
  def index
    @users = User.all
  end

  def show
  end


  private
  def user_params
    params.require(:user).permit(:name)
  end

  def fetch_user
    @user = User.find(params[:id])
  end

end
