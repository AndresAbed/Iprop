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
    if message.valid?
      Contact.appraisal_contact(message).deliver_now
      Contact.appraisal_notification(message).deliver_now
      @flag = true
      respond_to do |format|
        format.js {flash.now[:notice] = "Mensaje enviado. Gracias por contactarnos"}
      end
    else
      respond_to do |format|
        format.js {flash.now[:alert] = "Mensaje no enviado. Asegúrate de completar todos los campos."}
      end
    end
  end
end