# require 'rspec'
require 'rails_helper'
require 'support/render_views'


RSpec.describe CronutWidgetController, type: :controller do

  describe "GET #show" do

    context 'when the user has set their locale to :en' do
      it "returns http success" do
        get :show, xhr: true, format: :js
        expect(response).to have_http_status(:success)
      end

      it "has the proper translation" do
        get :show, xhr: true, format: :js
        expect(response.body).to have_content(I18n.t('cronuts_label_html')[0..25])
        # expect(page).to have_content(I18n.t(:cronuts_label_html)[0..25])
      end
    end

    context 'when the user has set their locale to :fr' do
      params = {params: {locale: 'fr'}, xhr: true, format: 'js'}
      it "returns http success" do
        get :show, params
        expect(response).to have_http_status(:success)
      end

      it "has the proper translation" do
        get :show, params
        expect(response.body).to have_content(I18n.t('cronuts_label_html', locale: :fr)[0..25])
        # expect(page).to have_content(I18n.t(:cronuts_label_html)[0..25])
      end

    end
  end


  # context 'when the user has set their locale to :en' do
  #   it 'displays a translated widget to the user' do
  #     visit cronut_widget_show_path(locale: :en), :js do
  #       expect(page).to have_content(I18n.t('welcome.index.cronuts_label_html'))
  #       # expect(response.body).to match I18n.t(:cronuts_label_html)
  #     end
  #   end
  # end

end
