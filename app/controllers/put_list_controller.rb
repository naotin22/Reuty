class PutListController < ApplicationController

  def index
    @users = User.all
    @products = Product.all

    Product.where(params[:id])
  end
end

