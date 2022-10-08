class PlumbingRequestsController < ApplicationController
  before_action :authenticate_admin!
  
  def index
    @plumbing_requests = PlumbingRequest.all
  end

  def show
    @plumbing_request = PlumbingRequest.find(params[:id])
  end

  def new
    @plumbing_request = PlumbingRequest.new
  end

  def create
    @plumbing_request = PlumbingRequest.new(plumbing_request_params)

    if @plumbing_request.save
      redirect_to @plumbing_request
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @plumbing_request = PlumbingRequest.find(params[:id])
  end

  def update
    @plumbing_request = PlumbingRequest.find(params[:id])

    if @plumbing_request.update(plumbing_request_params)
      redirect_to @plumbing_request
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @plumbing_request = plumbing_request.find(params[:id])
    @plumbing_request.destroy

    redirect_to plumbing_requests_path, status: :see_other
  end

  private
    def plumbing_request_params
      params.require(:plumbing_request).permit(:client_id, plumbing_jobs_attributes: %i[plumber_id client_id appointment_date status])
    end
end
