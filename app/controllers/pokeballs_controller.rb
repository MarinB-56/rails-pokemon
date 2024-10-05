class PokeballsController < ApplicationController
  def create
    @pokemon = Pokemon.find(params[:pokemon_id])
    @pokeball = Pokeball.new(pokeball_params)
    @trainer = Trainer.find(params[:pokeball][:trainer_id])

    @pokeball.pokemon = @pokemon
    @pokeball.trainer = @trainer

    if @pokeball.save
      redirect_to pokemon_path(@pokemon)
    else

      render "pokemons/show", status: :unprocessable_entity
    end
  end

  private

  def pokeball_params
    params.require(:pokeball).permit(:caught_on, :location)
  end
end

# Pokemon peut être attrapé qu'une fois ?
