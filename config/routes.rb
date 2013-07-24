Promanap2::Application.routes.draw do
  resources :tasks


  devise_for :users
  resources :projects
  
  root :to => 'projects#index'


end
