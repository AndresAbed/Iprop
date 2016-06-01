Rails.application.routes.draw do
  root 'main#index'
  post "/" => "main#contact_form", as: :contact  
  get '/tasaciones' => 'appraisals#index', as: :appraisals

  devise_for :admins, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
end
