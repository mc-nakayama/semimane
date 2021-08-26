class SchedulesController < ApplicationController
  before_action :set_schedule, only:[:show]
  def new
    @schedule = Schedule.new
  end

  def create
    @schedule = Schedule.create(schedule_params)
    redirect_to root_path, notice: 'を登録しました'
  end

  def show
  end
  
  private
  def schedule_params
    params.require(:schedule).permit(:schedule_date,:start_time,:stop_time,:seminar_id,:venue_id,:reservation,:participation,:memo)
  end
  
  def set_schedule
    @schedule = Schedule.find(params[:id])
  end
end
