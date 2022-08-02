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

end