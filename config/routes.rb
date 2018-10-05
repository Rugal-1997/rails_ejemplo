Rails.application.routes.draw do  

  resources :tareas
  #get 'tareas', to: 'tareas#index'
  #get 'tareas/new', to: 'tareas#new'
  #post 'tareas', to: 'tareas#create'
  #delete 'tareas/:id', to: 'tareas#destroy'
  #get 'tareas/:id/edit', to: 'tareas#edit'
  #put 'tareas/:id', to: 'tareas#update'
  #get 'tareas/:id', to: 'tareas#show'

  get 'bienvenido/index'

  root 'bienvenido#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end