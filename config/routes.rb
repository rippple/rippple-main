Rails.application.routes.draw do

  devise_for :admins
  devise_for :users
  root 'welcome#index'

  resources :rippples
end
