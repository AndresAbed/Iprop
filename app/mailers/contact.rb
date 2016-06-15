class Contact < ApplicationMailer
  default from: 'no-reply@iproponline.com.ar'

  def appraisal_contact(message)
    @message = message
    mail(to: 'test@iproponline.com.ar', subject: "Tasación")
  end
end
