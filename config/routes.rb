Rails.application.routes.draw do

  resources :products
  resources :line_items
  resources :carts
  resources :mon_comptes
  resources :items
  resources :locations_achats
  namespace :locations do
    resources :achats
  end
  devise_for :users
  root to: 'pages#home'
  get '/qui_sommes_nous', to: 'pages#qui_sommes_nous'
  get '/acheter_une_voiture', to: 'pages#acheter_une_voiture'
  get '/louer_une_voiture', to: 'pages#louer_une_voiture'
  get '/vendre_une_voiture', to: 'pages#vendre_une_voiture'
  get '/ferrari', to: 'pages#ferrari'
  get '/mon_panier', to: 'pages#mon_panier'
  get '/lamborghini', to: 'pages#lamborghini'
  get '/gestion_voiture', to: 'pages#gestion_voiture'
  get '/mon_compte', to: 'pages#mon_compte'
  get '/catalog', to: 'catalog#catalog'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
