Rails.application.routes.draw do
  resources :entrega_atividades
  resources :atividades
  resources :turmas
  resources :perfils
  resources :users, param: :_username
  post '/auth/login', to: 'authentication#login'
  get '/*a', to: 'application#not_found'


end
