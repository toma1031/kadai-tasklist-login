Rails.application.routes.draw do


  # get 'tasklists/create'
  # get 'tasklists/destroy'
  # get 'tasks/create'
  # get 'tasks/destroy'
  # get 'sessions/new'
  # get 'sessions/create'
  # get 'sessions/destroy'
  
    root to: 'tasks#index'
    
    get 'login', to: 'sessions#new'
    post 'login', to: 'sessions#create'
    delete 'logout', to: 'sessions#destroy'
    
    get 'signup', to: 'users#new'
    resources :users, only: [:new, :create, :destroy]
    

    
    resources :tasks
end
