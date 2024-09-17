class Calculation < ApplicationRecord
  # mass of the particle
  validates :mass, presence: true, numericality: { greater_than: 0 }
  # This is the angular frequency
  validates :omega, presence: true, numericality: { greater_than: 0 }
  # position of the particle
  validates :position, presence: true, numericality: { greater_than: 0 }
  # energy of the particle (eigenvalue)
  validates :energy, presence: true, numericality: { greater_than: 0 }

  # do qho calculation
  def calculate
    # hbar (reduced planck num)
    hbar = 1.0545718e-34
    freq = omega / (2 * Math::PI)
    potential_energy = 0.5 * mass * (2 * Math::PI * freq)**2 * position**2
    kinetic_energy = energy - potential_energy
    uncertainty = Math.sqrt(hbar / (2 * mass * freq)) # Acording to heisenberg
    { potential_energy: potential_energy, kinetic_energy: kinetic_energy, uncertainty: uncertainty }
  end
end
