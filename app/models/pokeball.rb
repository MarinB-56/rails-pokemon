class Pokeball < ApplicationRecord
  belongs_to :trainer
  belongs_to :pokemon

  validates :caught_on, presence: true
  validates :location, presence: true
  validates :trainer, uniqueness: { scope: :pokemon,  message: "déjà pris" }
end
