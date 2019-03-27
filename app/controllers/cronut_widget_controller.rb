class CronutWidgetController < ApplicationController
  protect_from_forgery :except => [:show, :widget_embed]

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
