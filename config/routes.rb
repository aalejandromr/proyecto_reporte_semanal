Rails.application.routes.draw do
  get 'lider/index'
  get 'lider/show'
  get 'lider/new'
  get 'lider/edit'
  get 'lider/create'
  get 'lider/update'
  get 'lider/destroy'
  get 'owner/index'
  get 'owner/show'
  get 'owner/new'
  get 'owner/edit'
  get 'owner/create'
  get 'owner/update'
  get 'owner/destroy'
  resources :reporte_semanal_celulas
  # resources :asistencia_domingos
  # resources :asistencia_reunion_evangelista
  # resources :asistencia_reunion_planificacions
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
