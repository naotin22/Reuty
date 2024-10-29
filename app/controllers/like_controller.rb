class LikeController < ApplicationController
  
  def index
    @favorites = Favorite.all
  end

end