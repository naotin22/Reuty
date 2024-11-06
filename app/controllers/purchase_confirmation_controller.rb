class PurchaseConfirmationController < ApplicationController

  def index
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])
    if @product.update(sale: "売り切れ")
      redirect_to home_path
    else
      render :index
    end
  end

end