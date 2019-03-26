# require 'rspec'
require 'rails_helper'
require 'support/render_views'


RSpec.describe WelcomeController do
  describe 'GET index' do
    it 'renders the index template' do
      get :index
      expect(response).to render_template('index')
    end

    it 'responds with the proper response status' do
      get :index
      expect(response.status).to eq(200)
    end
  end
end