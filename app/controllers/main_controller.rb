class MainController < ApplicationController
  def index
    
  end

  def contact_form
    message = Message.new(params[:contact_form])
    if message.valid?
      Contact.contact(message).deliver
      flash[:notice] = "Mensaje enviado. Gracias por contactarnos"
      render :index
    else
      flash[:alert] = "Mensaje no enviado. Asegúrate de completar todos los campos."
      render :index
    end
  end
end
