class PutEntryController < ApplicationController

  def new
    @product = Product.new
    @product_classes = ProductClass.all
  end

  def create
    @product = Product.new(product_params)
    @product.user_id = current_user.id
    @product.sale = "販売中"

    if params[:product][:image].present?
      @product.image = params[:product][:image].original_filename

      File.open("./app/assets/images/product/#{@product.image}", "w+b") do |file|
        file.write(params[:product][:image].read)
      end
    end

    if @product.save
      redirect_to put_list_path
    else
      render :new
    end
  end

  def edit
    product_id = params[:product_id]
    @product = Product.find(product_id)
    @product_classes = ProductClass.all
  end

  def update
    product_id = params[:product_id]
    @product = Product.find(product_id)
    @product.user_id = current_user.id
    @product.sale = "販売中"

    if params[:product][:image].present?
      @product.image = params[:product][:image].original_filename

      File.open("./app/assets/images/product/#{@product.image}", "w+b") do |file|
        file.write(params[:product][:image].read)
      end
    end

    if @product.update(product_params)
      redirect_to put_list_path(@product.user.id)
    else
      render :edit
    end
  end

  def destroy
    product_id = params[:product_id]
    @product = Product.find(product_id)
    @product.destroy

    redirect_to put_list_path
  end

  private

  def product_params
    params.require(:product).permit(:name, :price, :explanation, :product_class_id)
  end
  
end