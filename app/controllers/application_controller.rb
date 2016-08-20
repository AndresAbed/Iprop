class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  helper_method :selected_currency, :dollar_price

  def dollar_price
    return (JSON.load(open('http://ws.geeklab.com.ar/dolar/get-dolar-json.php').read).values[0]).to_f
  end

  def selected_currency
    return cookies[:currency]
  end

  def set_currency
    cookies[:currency] = params[:currency_item]
    redirect_to :back
  end
end
