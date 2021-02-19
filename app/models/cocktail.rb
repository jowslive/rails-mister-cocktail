class Cocktail < ApplicationRecord
  has_many :doses, dependent: :destroy
  has_many :ingredients, through: :doses

  validates :name, presence: true, uniqueness: true
  validates :image, presence: true, uniqueness: true
  validates :bootstrap_color, presence: true, inclusion: %w[primary secondary success danger warning info dark]
end
