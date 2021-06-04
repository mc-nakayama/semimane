class SeminarsController < ApplicationController
  def index
    @seminars = Seminar.all
  end

  def new
    @seminar = Seminar.new
  end

  def create
    @seminar = Seminar.new
    if @seminar.save(seminar_params)
      redirect_to root_path, notice: 'グループを作成しました'
    else
      render :new
    end
  end
  
  private
  def seminar_params
    params.require(:seminar).permit(:name,:style)
  end
end
