class PokemonsController < ApplicationController
  def index
    @pokemons = Pokemon.all

    if params[:search][:query].present?
      @pokemons = Pokemon.where("name ILIKE ?", "%#{params[:search][:query]}%")
    end
  end

  def show
    @pokemon = Pokemon.find(params[:id])

    @pokeball = Pokeball.new
  end
end
