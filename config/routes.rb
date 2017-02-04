Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'

  root 'welcome#index'
  
  resources :rippples
end
