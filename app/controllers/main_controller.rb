class MainController < ApplicationController
  def index
  end

  def company
  end

  def consultancy
  end

  def contact
  end

  def contact_message
    message = ContactMessage.new(params[:contact_form])
    if message.valid?
      Contact.contact_message(message).deliver_now
      @flag = true
      respond_to do |format|
        format.js {flash[:notice] = "Mensaje enviado. Gracias por contactarnos"}
      end
    else
      respond_to do |format|
        format.js {flash[:alert] = "Mensaje no enviado. Asegúrate de completar todos los campos."}
      end
    end
  end
end
