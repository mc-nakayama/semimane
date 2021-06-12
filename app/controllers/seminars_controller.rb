class SeminarsController < ApplicationController
  def index
    @seminars = Seminar.all
  end

  def new
    @seminar = Seminar.new
  end

  def create
    @seminar = Seminar.new(seminar_params)
    if @seminar.save
      redirect_to root_path, notice: 'グループを作成しました'
    else
      render :new
    end
  end
  
  private
  def seminar_params
    params.require(:seminar).permit(:name,:style,:description)
  end
end
