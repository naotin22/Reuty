class HomeController < ApplicationController
  
  def index
    @products = Product.all
    @product_classes = ProductClass.all
    @favorites = Favorite.where(user_id: current_user.id)
    
    @current_user = current_user
  end
  
end