class UsersController < ApplicationController

  before_action :fetch_user, only: [:show]

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      log_in_user(@user.id)
      redirect_to users_path, notice: 'User was successfully created.'
    else
      render :new
    end
  end

  #will delete index page, simply here to make sure our users are being created
  def index
    @users = User.all
  end

  def show
  end


  private
  def user_params
    params.require(:user).permit(:name, :password)
  end

  def fetch_user
    @user = User.find(params[:id])
  end

end
