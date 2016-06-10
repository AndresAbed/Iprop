Rails.application.routes.draw do
  get 'properties/show'

  root 'main#index'
  get '/iprop-online' => 'main#iprop', as: :iprop
  get '/tasaciones' => 'appraisals#appraisals', as: :appraisals
  get '/empresa' => 'main#company', as: :company
  get '/consultoria' => 'main#consultancy', as: :consultancy
  get '/contacto' => 'main#contact', as: :contact

  resources :properties, only: [:show], path: '/propiedades'

  post "/" => "main#contact_form"
  get  'appraisals/tasaciones', as: :appraisals_excel

  devise_for :admins, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
end
