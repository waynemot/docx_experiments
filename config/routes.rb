Rails.application.routes.draw do
  resources :doc_templates
  resources :employment_types
  resources :requests

  resources :letters do
    member do
      get 'generate'
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'requests#index'
end
