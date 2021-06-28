class VenuesController < ApplicationController
  def index
    @venues = Venue.all
  end

  def new
    @venue = Venue.new
  end

  def create
    @venue = Venue.new(venue_params)
    if @venue.save
      redirect_to root_path, notice: 'を登録しました'
    else
      render :new
  end

  private
  def venue_params
    params.require(:venue).permit(:name,:address,:tel,:memo,:image)
  end
end
