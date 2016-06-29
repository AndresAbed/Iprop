class PropertiesController < ApplicationController
  def index
    @properties = Property.search(params[:address], params[:property_type], params[:state]).page(params[:page]).per(16).order("created_at DESC")
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
