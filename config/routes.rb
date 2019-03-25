Rails.application.routes.draw do

  get 'cronut_widget/show'
  get 'welcome/index'

  root 'welcome#index'
end
