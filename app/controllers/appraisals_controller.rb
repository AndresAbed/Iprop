class AppraisalsController < ApplicationController
  def appraisals
  end

  def tasaciones
    @appraisals = Appraisal.order(:neighborhood)
    respond_to do |format|
      format.xls
    end
  end
end