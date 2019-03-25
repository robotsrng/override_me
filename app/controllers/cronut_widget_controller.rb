class CronutWidgetController < ApplicationController
  def show
    @locale = params['locale']
    respond_to do |format|
      format.html
      format.js
    end
  end
end
