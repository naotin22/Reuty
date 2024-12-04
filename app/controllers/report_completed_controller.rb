class ReportCompletedController < ApplicationController

  def index
    @product_id = params[:product_id]
  end
end

