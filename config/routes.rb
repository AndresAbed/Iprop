Rails.application.routes.draw do
  get 'properties/show'

  root 'main#index'
  get '/tasaciones' => 'appraisals#appraisals', as: :appraisals
  post '/tasaciones' => 'appraisals#contact', as: :appraisals_contact
  get '/empresa' => 'main#company', as: :company
  get '/consultoria' => 'main#consultancy', as: :consultancy
  get '/contacto' => 'main#contact'
  post '/contacto' => 'main#contact_message', as: :contact

  resources :properties, only: [:index, :show], path: '/propiedades'
  resources :news, only: [:show], path: '/novedades'

  post "/" => "main#contact_form"
  get  'appraisals/tasaciones', as: :appraisals_excel

  devise_for :admins, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
end
