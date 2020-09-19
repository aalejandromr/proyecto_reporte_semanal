Rails.application.routes.draw do
  resources :digest_reporte_semanals
  devise_for :users
  resources :asistencia_reunion_evangelists
  resources :reporte_semanal_celulas
  resources :asistencia_domingos
  resources :asistencia_reunion_evangelista
  resources :asistencia_reunion_planificacions
  resources :liders
  resources :celulas
  resources :sectors
  resources :supervisors

  root "asistencia_reunion_planificacions#new"

  get '/success', to: 'success#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
