class PropertiesController < ApplicationController
  def show
    @property = Property.find(params[:id])
    respond_to do |format|
      format.html
      format.pdf do
        render pdf: "#{@property.title}", template: 'properties/pdf.html.erb', encoding: 'UTF-8'
      end
    end
  end
end
