class LoginController < ApplicationController
  
  def index
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    login_user = User.find_by(mail: @user.mail, password: @user.password)

    if login_user
      set_login_user(login_user)
      redirect_to home_path
    else
      render :index
    end
  end

  private

  def user_params
    params.require(:user).permit(:password, :mail)
  end

end