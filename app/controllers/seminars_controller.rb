class SeminarsController < ApplicationController
  before_action :set_seminar, only:[:show,:edit,:update]

  def index
    @seminars = Seminar.all
    @venues = Venue.all
  end

  def show
  end

  def new
    @seminar = Seminar.new
  end

  def create
    @seminar = Seminar.new(seminar_params)
    if @seminar.save
      redirect_to root_path, notice: 'セミナーを登録しました'
    else
      render :new
    end
  end
  
  def edit
  end

  def update
    @seminar.update!(seminar_params)
    redirect_to seminar_path, notice: "セミナー「#{@seminar.name}」を更新しました。"
  end
  
  private
  def seminar_params
    params.require(:seminar).permit(:name,:style,:description)
  end

  def set_seminar
    @seminar = Seminar.find(params[:id])
  end


end
