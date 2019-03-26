class CronutWidgetController < ApplicationController
  protect_from_forgery :except => [:show, :widget_embed]
  before_action :set_locale

  def set_locale
    I18n.enforce_available_locales!(params[:locale])
      I18n.locale = params[:locale] || I18n.default_locale
  end

  def show
    @locale = params['locale']
    respond_to do |format|
      format.html {render partial: 'show'}
      format.js
    end
  end

  def widget_embed
    respond_to do |format|
      format.html
      format.js
    end
  end
end
