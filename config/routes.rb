Rails.application.routes.draw do
  resources :leituras
  resources :boxes
  resources :usuarios
  resources :clientes
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html


  root to: 'home#index'
  get 'home', to: 'home#index'
  get '/boxrelease', to: 'leituras#checksenha'
  get '/id_out', to: 'leituras#checkid'
  get '/check_ativo', to: 'leituras#checkativo'
  get '/proc_por_unidade', to: 'leituras#proc_por_unidade'
  get '/proc_por_box', to: 'leituras#proc_por_box'
  get '/envio_email', to: 'leituras#envio_email'

end