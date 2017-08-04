class SchedulesController < ApplicationController
  before_action :authen
  def index
    @schedules = Schedule.all
  end

  def edit
    @schedule = Schedule.find_by(id:params[:id])
    flash[:alert] = @schedule.date
  end

  def update
    schedule = Schedule.find_by(id:params[:id])
    schedule.update(liveCoding:params[:liveCoding],
                    uniLion:params[:uniLion],
                    fLearning:params[:fLearning],
                    hackerThon:params[:hackerThon],
                    soloRun:params[:soloRun])
    redirect_to schedules_path,method:"get"
  end

end
