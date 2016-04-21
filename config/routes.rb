Rails.application.routes.draw do
  root 'main#index'
  post "main/contact_form", as: :contact

  devise_for :admins, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
end
