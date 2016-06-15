class MainController < ApplicationController
  def index
  end

  def iprop
    @properties = Property.all.order('created_at DESC')
  end

  def company
  end

  def consultancy
  end

  def contact
  end
end
