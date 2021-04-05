class Mechanic < ApplicationRecord
  has_many :ride_mechanics
  has_many :rides, through: :ride_mechanics

  def ride_names

  end 

  def self.average_experience
    (mechanics.sum {mechanic.experience}) / mechanics.count
  end
end