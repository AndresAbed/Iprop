class Contact < ApplicationMailer
  default from: 'no-reply@iproponline.com.ar'

  def appraisal_contact(message)
    @message = message
    mail(to: 'info@iproponline.com.ar', subject: "Tasación")
  end

  def appraisal_notification(message)
    @message = message
    mail(to: @message.email, subject: "Gracias por contactarnos")
  end

  def contact_message(message)
    @message = message
    mail(to: 'info@iproponline.com.ar', subject: "Contacto Iproponline")
  end

  def contact_notification(message)
    @message = message
    mail(to: @message.email, subject: "Gracias por contactarnos")
  end

  def properties_contact(message)
    @message = message
    mail(to: 'info@iproponline.com.ar', subject: "Contacto propiedad")
  end
end
