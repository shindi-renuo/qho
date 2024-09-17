class Qho < ApplicationRecord
  validates :mass, presence: true, numericality: { greater_than: 0 }
  validates :omega, presence: true, numericality: { greater_than: 0 }
  validates :position, presence: true, numericality: { greater_than: 0 }
  validates :energy, presence: true, numericality: { greater_than: 0 }

  def calculate
    hbar = 1.0545718e-34
    freq = omega / (2 * Math::PI)
    potential_energy = 0.5 * mass * (2 * Math::PI * freq)**2 * position**2
    kinetic_energy = energy - potential_energy
    uncertainty = Math.sqrt(hbar / (2 * mass * freq)) # Acording to heisenberg
    { potential_energy: potential_energy, kinetic_energy: kinetic_energy, uncertainty: uncertainty }
  end
end
