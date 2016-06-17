class PropertiesController < ApplicationController
  def index
    @properties = Property.search(params[:address], params[:property_type], params[:state])
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
end
