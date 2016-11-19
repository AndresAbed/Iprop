class AppraisalsController < ApplicationController
  def appraisals
  end

  def tasaciones
    @appraisals = Appraisal.order(:neighborhood)
    respond_to do |format|
      format.xls
    end
  end

  def contact
    message = AppraisalsMessage.new(params[:contact_form])
    if verify_recaptcha(model: message) && message.valid?
      Contact.appraisal_contact(message).deliver_now
      Contact.appraisal_notification(message).deliver_now
      redirect_to success_path
    else
      flash[:alert] = "Mensaje no enviado. Completa los campos obligatorios y valida el captcha."
      redirect_to :back
    end
  end
end