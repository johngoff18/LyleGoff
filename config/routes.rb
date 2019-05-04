Rails.application.routes.draw do
  resources :blender_arts
  resources :web_apps
  resources :mobile_apps
  get 'welcome/index'
  
  root 'welcome#index'
end
