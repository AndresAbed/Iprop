Rails.application.routes.draw do
  get 'properties/show'

  root 'main#index'
  get '/tasaciones', to: 'appraisals#appraisals', as: :appraisals
  post '/tasaciones', to: 'appraisals#contact', as: :appraisals_contact
  get '/empresa', to: 'main#company', as: :company
  get '/consultoria', to: 'main#consultancy', as: :consultancy
  get '/contacto', to: 'main#contact'
  post '/contacto', to: 'main#contact_message', as: :contact

  resources :properties, only: [:index, :show], path: '/propiedades'
  post '/propiedades', to: 'properties#index'
  resources :posts, only: [:show], path: '/novedades'

  #get  'appraisals/tasaciones', as: :appraisals_excel

  devise_for :admins, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
end
