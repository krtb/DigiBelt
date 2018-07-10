class SessionsController < ApplicationController

  def new

  end

  def create
    @user = User.find_by(username: user_params[:username])
    if @user && @user.authenticate(user_params[:password])
      log_in_user(@user.id)
      redirect_to @user
    else
      @error = "Username and Password do not match, sorry :^("
      render :new
    end
  end


  private
  def user_params
    params.require(:session).permit(:username, :password)
  end
end
