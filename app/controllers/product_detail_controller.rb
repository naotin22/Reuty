class ProductDetailController < ApplicationController
  

  def show
    @product = Product.find(params[:id])

    @question = Question.new
    @question.product_id = @product.id
    @question.user_id = current_user.id
  end

  def create
    @question = Question.new(question_params)

    if @question.save
      redirect_to product_detail_path(@question.product_id), notice:"質問を追加"
    else
      render :new
    end
  end

  private

  def question_params
    params.require(:question).permit(:product_id, :user_id, :comment)
  end
end