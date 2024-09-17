class Scz < ApplicationRecord
  validates :mass, presence: true, numericality: { greater_than: 0 }

  def calculate
    radius = 2 * 6.67430e-11 * mass / (299792458**2)

    { radius: radius }
  end
end
