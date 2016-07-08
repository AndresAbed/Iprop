class Contact < ApplicationMailer
  default from: 'no-reply@iproponline.com.ar'

  def appraisal_contact(message)
    @message = message
    mail(to: 'info@iproponline.com.ar', subject: "Tasación")
  end

  def contact_message(message)
    @message = message
    mail(to: 'info@iproponline.com.ar', subject: "Contacto Iproponline")
  end

  def properties_contact(message)
    @message = message
    mail(to: 'info@iproponline.com.ar', subject: "Contacto propiedad")
  end
end
