Rails.application.routes.draw do
  root to: 'pages#home'
  devise_for :users
  resources :measurements
  resources :user_bras
  resources :catalog_bras
  get '/article_1', to: 'pages#article_1'
  get '/article_2', to: 'pages#article_2'
  get '/article_3', to: 'pages#article_2'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
