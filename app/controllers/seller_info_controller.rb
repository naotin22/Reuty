class SellerInfoController < ApplicationController
  
  def index
    user_ids = Product.pluck(:user_id).uniq
    @users = User.where(id: user_ids).order(:user_id)
  end

  def update
    @user = User.find(params[:user_id])
    @user.stop_flag = !@user.stop_flag
    @user.save

    redirect_to seller_info_path
  end

end