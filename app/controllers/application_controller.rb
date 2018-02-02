class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def hola
    render html: 'Hola!!!'
  end
end
