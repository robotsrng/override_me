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

    context 'when the user has set their locale to :en' do
      it 'displays a translated widget to the user' do
        visit welcome_index_path(locale: :en)
        expect(page).to have_content(I18n.t(:cronuts_label_html)[0..25])
        # expect(response.body).to match I18n.t(:cronuts_label_html)
      end
    end

    context 'when the user has set their locale to :fr' do
      it 'displays a translated widget to the user' do
        visit welcome_index_path(locale: :fr)
        expect(page).to have_content(I18n.t(:cronuts_label_html)[0..25])
      end

      it 'does not display english' do
        visit welcome_index_path(locale: :fr)
        expect(page).to_not have_content(I18n.t(:cronuts_label_html, locale: :en)[0..25])
      end

    end

  end

end