class ReportListController < ApplicationController
  
  def index
    # @reports = Report.all
    @reports= Report.order(:user_id, :product_id)
  end
  def create
    @reports = Report.all
    report_list = Report.find_by(user_id: @reports.comment)

    

  end  




end