class MainController < ApplicationController
  def index
    @featured_properties = Property.where("highlight = ?", true).order("created_at desc")
    @posts = Post.where("shown = true").order("created_at desc")
    @videos = Video.all
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
        format.js {flash.now[:notice] = "Mensaje enviado. Gracias por contactarnos"}
      end
    else
      respond_to do |format|
        format.js {flash.now[:alert] = "Mensaje no enviado. Asegúrate de completar todos los campos."}
      end
    end
  end
end
