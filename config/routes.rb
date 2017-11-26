Rails.application.routes.draw do
  root to: 'pages#home'
  resources :measurements
  resources :user_bras
  resources :catalog_bras
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
