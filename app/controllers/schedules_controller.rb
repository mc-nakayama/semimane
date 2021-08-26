class SchedulesController < ApplicationController
  def new
    @schedule = Schedule.new
  end

  def create
    @schedule = Schedule.create(schedule_params)
    redirect_to root_path, notice: 'を登録しました'
  end
  
  private
  def schedule_params
    params.require(:schedule).permit(:schedule_date,:start_time,:stop_time,:seminar_id,:venue_id,:reservation,:participation,:memo)
  end
end
