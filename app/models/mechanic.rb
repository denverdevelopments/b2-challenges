class Mechanic < ApplicationRecord
  has_many :ride_mechanics
  has_many :rides, through: :ride_mechanics

  def ride_names
    @rides.names
  end

  def self.average_experience
    average(:experience).to_i
    # sum("experience")/self.count.to_i
  end

  def open_rides_by_thrill
    # rides.where(open: true).order(rating: :desc)
    rides.only_open.thrillers_first
  end
end
