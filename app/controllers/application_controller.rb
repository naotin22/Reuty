class ApplicationController < ActionController::Base
  
  # ログインユーザーを返却する
  def current_user
    User.find(session[:login_user_id])
  end

  private

  def set_login_user(user)
    session[:login_user_id] = user.id
  end
end
