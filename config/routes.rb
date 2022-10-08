Rails.application.routes.draw do
  devise_for :admins
  devise_scope :admin do
    root to: "devise/sessions#new"
  end
  
  resources :clients
  resources :plumbers  do
    get 'assigned_jobs', to: 'plumbers#assigned_jobs'
  end
  resources :plumbing_requests
  resources :plumbing_jobs, only: [:update]
end
