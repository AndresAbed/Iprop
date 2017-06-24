class MainController < ApplicationController
  def index
    @featured_properties = Property.where(highlight: true, approved: true).order("priority desc, created_at desc")
    @posts = Post.where(shown: true).order("created_at desc").limit(2)
    @videos = Video.all.limit(2)
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
      Contact.contact_notification(message).deliver_now
      redirect_to success_path
    else
      flash[:alert] = "Mensaje no enviado. Asegúrate de completar todos los campos."
      redirect_to :back
    end
  end

  def success
  end
end
