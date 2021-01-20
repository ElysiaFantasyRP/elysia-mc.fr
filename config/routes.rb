# frozen_string_literal: true

Rails.application.routes.draw do
  get 'admin_menu/index'
  root 'accueil#index'

  get 'accueil/index'
  get 'accueil', to: 'accueil#index'

  get 'profil/index'
  get 'profil', to: 'boutique#index'

  get 'boutique/index'
  get 'boutique', to: 'boutique#index'

  post '/profil/search', to: 'profil#load'
  get '/profil/reset', to: 'profil#reset'
  post '/boutique/show', to: 'boutique#show'
  post '/boutique/add_cart', to: 'boutique#add_item_to_cart'
  get '/boutique/cart', to: 'boutique#cart'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
