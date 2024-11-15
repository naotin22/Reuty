class SellerInfoController < ApplicationController
  
  def index
    user_ids = Product.pluck(:user_id).uniq
    @users = User.where(id: user_ids).order(:user_id)
  end

  def create
    @products = Product.all
  end

end