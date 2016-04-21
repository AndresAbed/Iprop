class Contact < ApplicationMailer
  default from: 'example@iproponline.com.ar'

  def contact(message)
    @message = message
    mail(to: 'test@iproponline.com.ar', subject: "Subject test")
  end
end
