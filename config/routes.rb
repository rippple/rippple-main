Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'

  resources :rippples

  root 'welcome#index'

end
