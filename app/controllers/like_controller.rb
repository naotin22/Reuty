class LikeController < ApplicationController
  
  def index
    @favorites = Favorite.where(user_id: current_user.id)
  end

  def destroy
    favorite_id = params[:id]
    @favorite = Favorite.find(favorite_id)
    @favorite.destroy

    redirect_to like_path
  end

  def create
    # if @favorites.product_id =! params[:product_id]
      @favorite = Favorite.new
      @favorite.user_id = current_user.id
      @favorite.product_id = params[:product_id]
    

      if @favorite.save
        redirect_to product_detail_path(@favorite.product_id)
      else
        # 成否にかかわらず商品詳細画面を表示
        # TODO: flashメッセージを使う？
        redirect_to product_detail_path(@favorite.product_id)
      end
    # end
  end
end