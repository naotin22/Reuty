class ApplicationController < ActionController::Base
  
  # ログインユーザーを返却する
  def current_user
    # 仮実装
    User.find(1)
  end
end
