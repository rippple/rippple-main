Rails.application.routes.draw do

  root 'welcome#index'

  resources :rippples
end
