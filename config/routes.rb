Rails.application.routes.draw do

  get 'cronut_widget/show'
  get 'cronut_widget/widget_embed'
  get 'welcome/index'
  root 'welcome#index'
end
