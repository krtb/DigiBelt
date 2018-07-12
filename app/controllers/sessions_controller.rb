class SessionsController < ApplicationController

  def new
  end

  def create
    @user = User.find_by(name: user_params[:name])
    if @user && @user.authenticate(user_params[:password])
      log_in_user(@user.id)
      redirect_to welcome_path
    else
      @error = "Username and Password do not match, sorry :^("
      render :new
    end
  end

  def destroy
    get_logged_in_user
    logout_user(@logged_in_user.id)
    @logged_in_user = nil
    redirect_to welcome_path
  end

  private
  def user_params
    params.require(:session).permit(:name, :password)
  end
end
