class LoginController < ApplicationController
  
  def index
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    login_user = User.find_by(mail: @user.mail, password: @user.password)

    if login_user && !login_user.stop_flag
      set_login_user(login_user)

      if login_user.manage_flag
        redirect_to manage_path
      else
        redirect_to home_path
      end
    else
      flash.now[:notice] = "メールアドレスかパスワードが間違っています"
      render :index
    end
  end

  private

  def user_params
    params.require(:user).permit(:password, :mail)
  end

end