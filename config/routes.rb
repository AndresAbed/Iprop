Rails.application.routes.draw do
  root 'main#index'
  post "/" => "main#contact_form", as: :contact  
  get '/Iprop-tasaciones' => 'appraisals#excel', as: :appraisals_excel
  get '/iprop-online' => 'main#iprop', as: :iprop
  get '/empresa' => 'main#company', as: :company
  get '/consultoria' => 'main#consultancy', as: :consultancy

  devise_for :admins, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
end
