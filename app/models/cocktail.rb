class Cocktail < ApplicationRecord
  has_one_attached :photo
  has_many :doses, dependent: :destroy
  has_many :ingredients, through: :doses

  validates :name, presence: true, uniqueness: true
  validates :photo, presence: true
  validates :bootstrap_color, presence: true, inclusion: %w[primary secondary success danger warning info dark]
end
