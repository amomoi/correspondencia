Rails.application.routes.draw do
  resources :status_boxes
  resources :lockerusuarios
  resources :lockerclientes
  resources :boxes
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html


  root to: 'home#index'
  get 'home', to: 'home#index'
  get '/boxrelease', to: 'status_boxes#checksenha'
  get '/id_out', to: 'status_boxes#checkid'
  get '/check_ativo', to: 'status_boxes#checkativo'
  get '/proc_por_unidade', to: 'status_boxes#proc_por_unidade'
  get '/proc_por_box', to: 'status_boxes#proc_por_box'
  get '/envio_email', to: 'status_boxes#envio_email'
  get '/check_vazio', to:'status_boxes#check_vazio'
  get '/status_boxes_por_cliente', to: 'status_boxes#status_boxes_por_cliente'
  


end