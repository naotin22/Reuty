class ProductManageController < ApplicationController
  
  def index
    @products = Product.all
  end

end