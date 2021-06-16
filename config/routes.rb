Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get '/qui_sommes_nous', to: 'pages#qui_sommes_nous'
  get '/acheter_une_voiture', to: 'pages#acheter_une_voiture'
  get '/louer_une_voiture', to: 'pages#louer_une_voiture'
  get '/vendre_une_voiture', to: 'pages#vendre_une_voiture'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
