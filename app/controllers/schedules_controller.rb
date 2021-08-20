class SchedulesController < ApplicationController
  def new
    @schedule = Schedule.new
    # @seminars = Seminar.all
    # @venues = Venue.all
  end

  def create
    @schedule = Schedule.create
  end
  
end
