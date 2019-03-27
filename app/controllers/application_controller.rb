class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :set_locale

  def set_locale
    I18n.locale = request.env['HTTP_ACCEPT_LANGUAGE'].to_s.scan(/^[a-z]{2}/).first || params[:locale] ||
        session[:locale] || I18n.default_locale
    session[:locale] = I18n.locale
  end
end
