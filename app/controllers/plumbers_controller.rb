class PlumbersController < ApplicationController
  before_action :authenticate_admin!, except: :assigned_jobs
  
  def index
    @plumbers = Plumber.all
  end

  def show
    @plumber = Plumber.find(params[:id])
  end

  def new
    @plumber = Plumber.new
  end

  def create
    @plumber = Plumber.new(plumber_params)

    if @plumber.save
      redirect_to @plumber
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @plumber = Plumber.find(params[:id])
  end

  def update
    @plumber = Plumber.find(params[:id])

    if @plumber.update(plumber_params)
      redirect_to @plumber
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @plumber = Plumber.find(params[:id])
    @plumber.destroy

    redirect_to plumbers_path, status: :see_other
  end

  def assigned_jobs
    @assigned_jobs = PlumbingJob.where('plumber_id = ?, appointment_date >= ? AND appointment_date <= ?', params[:plumber_id], params[:start_date], params[:end_date])
  end

  private
    def plumber_params
      params.require(:plumber).permit(:name, :address, :vehicle)
    end
end
