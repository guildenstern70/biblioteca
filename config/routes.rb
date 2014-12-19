Rails.application.routes.draw do
  
  get 'index' => 'main#index'
  get 'home' => 'main#index'
  
  root 'main#index'
  
  resources :books
  resources :users
  
end
