Rails.application.routes.draw do
  resources :students
  resources :users
  root to: 'projects#index'
  resources :projects do 
  	resources :tasks
  end
  
  
  
end
