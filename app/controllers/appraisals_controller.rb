class AppraisalsController < ApplicationController
  def excel
    @appraisals = Appraisal.order(:neighborhood)
    respond_to do |format|
      format.html
      format.xls
    end
  end
end