class ReportListController < ApplicationController
  
  def index
    @reports = Report.all
  end

end