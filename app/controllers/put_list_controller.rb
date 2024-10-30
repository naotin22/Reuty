class PutListController < ApplicationController

  def index
    @users = User.all
    @products = Product.all

    Product where()
  end
end

