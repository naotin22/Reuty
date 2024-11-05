class ProductDetailController < ApplicationController
  
  def index
    @test = "てすと"
  end

  def show
    @product = Product.find(params[:id])
  end
end