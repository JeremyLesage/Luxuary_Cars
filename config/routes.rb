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
  resources :contacts, only: [:new, :create] do
      get "/thanks" => "contacts#thanks"
    end

  devise_for :users
  root to: 'pages#home'
  get '/qui_sommes_nous', to: 'pages#qui_sommes_nous'
  get '/acheter_une_voiture', to: 'pages#acheter_une_voiture'
  get '/louer_une_voiture', to: 'pages#louer_une_voiture'
  get '/ferrari', to: 'pages#ferrari'
  get '/lamborghini', to: 'pages#lamborghini'
  get '/mon_compte', to: 'pages#mon_compte'
  get '/catalog', to: 'catalog#catalog'
  get '/message', to: 'pages#message'

  #Delete

  delete '/message', to: 'pages#message'


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
