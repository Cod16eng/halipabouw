Rails.application.routes.draw do
  resources :materials
  resources :labours
  resources :projects
  root 'clients#index'
  resources :clients
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
