class ReportListController < ApplicationController
  
  def index
    @reports = Report.order(:product_id, :user_id).group_by { |report| "#{report.product_id}_#{report.user_id}" }
  end
  
end