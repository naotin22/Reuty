class HomeController < ApplicationController
  
  def index
    @products = Product.all
    @product_classes = ProductClass.all
  end
  
end