class VenuesController < ApplicationController
  before_action :set_venue, only:[:show,:edit] 

  def index
    @venues = Venue.all
  end

  def show
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
  end

  def edit
  end

  def update
    venue = Venue.find(params[:id])
    if venue.update(venue_params)
      redirect_to venue_path(venue.id), notice: 'を更新しました'
    else
      render :edit
    end
  end

  def destroy
    venue = Venue.find(params[:id])
    venue.destroy
    redirect_to root_path, notice: '削除しました'
  end

  private
  def venue_params
    params.require(:venue).permit(:name,:postal_code,:address,:tel,:memo,:image)
  end

  def set_venue
    @venue = Venue.find(params[:id])
  end

end