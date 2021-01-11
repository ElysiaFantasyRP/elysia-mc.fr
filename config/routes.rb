Rails.application.routes.draw do
  
  root 'accueil#index'
  get 'accueil/index'
  get 'profil/index'
  get 'boutique/index'
  post '/profil/search', to: 'profil#load'
  get '/profil/reset', to: 'profil#reset'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
