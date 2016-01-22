Rails.application.routes.draw do
  # 	get 'exam/show'
  
  #   get 'exam/new'
  
  #   get 'exam/create'
  
  #   get 'exam/index''

  resources :students
  resources :users
  resources :exams
  root to: 'projects#index'
  resources :projects do 
  	resources :tasks
  end
  
  
  
end
