class HomeController < ApplicationController
  
  def index
    @products = Product.all
    @product_classes = ProductClass.all

    @current_user = current_user
  end
  
end