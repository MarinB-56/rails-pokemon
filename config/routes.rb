Rails.application.routes.draw do
  root to: "pages#home"

  resources :pokemons, only: [:show, :index] do
    resources :pokeballs, only: [:create]
  end
  resources :trainers, only: [:show, :index]
end
