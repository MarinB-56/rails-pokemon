class Pokemon < ApplicationRecord
  has_many :pokeballs

  has_one_attached :photo

  validates :name, presence: true, uniqueness: true
  validates :element_type, presence: true
end
