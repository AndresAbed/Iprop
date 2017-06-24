class PropertiesController < ApplicationController
  def index
    @properties = Property.search(params[:address], params[:property_type], params[:operation]).page(params[:page]).per(16).order("highlight desc, priority desc, created_at desc")
    respond_to do |format|
      format.html
      format.js
    end
  end

  def show
    @property = Property.friendly.find(params[:id])
    respond_to do |format|
      format.html
      format.pdf do
        render pdf: "#{@property.title}", template: 'properties/pdf.html.erb', encoding: 'UTF-8'
      end
    end
  end

  def contact
    message = PropertiesMessage.new(params[:contact_form])
    if message.valid?
      Contact.properties_contact(message).deliver_now
      Contact.contact_notification(message).deliver_now
      redirect_to success_path
    else
      flash[:alert] = "Mensaje no enviado. Asegúrate de completar todos los campos."
      redirect_to :back
    end
  end

  def send_to_friend
    message = SendToFriend.new(params[:send_to_friend_form])
    if message.valid?
      Contact.send_to_friend(message).deliver_now
      @flag = true
      respond_to do |format|
        format.js {flash.now[:notice] = "Mensaje enviado."}
      end
    else
      respond_to do |format|
        format.js {flash.now[:alert] = "Mensaje no enviado. Asegúrate de completar todos los campos."}
      end
    end
  end
end
