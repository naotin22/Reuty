class CustomerReportController < ApplicationController

  def new
    @product = Product.find(params[:product_id])
    @report_classes = ReportClass.order(:id)
  end

  def create
    report_comments = params[:report_comment]
    if report_comments
      report_comments.each do |report_comment|
        @report = Report.new(product_id: params[:product_id], user_id: current_user.id, report_comment: report_comment)
        @report.save
      end
    else
      # エラー

    end

    if params[:other] == "1"
      @report = Report.new(product_id: params[:product_id], user_id: current_user.id, report_comment: params[:other_comment])
      @report.save
    end

    redirect_to report_completed_path(@report.product_id)
  end

end