Rails.application.routes.draw do

  get 'test/home'
  get 'test/about'
  get 'test/contact'
  get 'cronut_widget/show'
  get 'cronut_widget/widget_embed'
  get 'welcome/index'
  root 'welcome#index'
end
