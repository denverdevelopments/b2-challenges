class MechanicsController < ApplicationController
  def index
    @mechanics = Mechanic.all
  end

  def show
    @mechanic = Mechanic.find(params[:id])
    # @rides = @mechanic.rides.only_open.thrillers_first
    @thrill_average = @mechanic.rides.ratings_avg
    @rides = @mechanic.open_rides_by_thrill
  end
end
