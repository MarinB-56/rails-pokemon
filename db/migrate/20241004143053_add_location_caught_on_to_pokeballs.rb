class AddLocationCaughtOnToPokeballs < ActiveRecord::Migration[7.1]
  def change
    add_column :pokeballs, :caught_on, :date
    add_column :pokeballs, :location, :string
  end
end
