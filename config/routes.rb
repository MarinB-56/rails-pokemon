Rails.application.routes.draw do
  root to: "pages#home"

  resources :pokemons, only: [:show, :index]
  resources :trainers, only: [:show, :index]
end
