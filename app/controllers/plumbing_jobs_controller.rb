class PlumbingJobsController < ApplicationController
  
  def update
    @plumbing_job = PlumbingJob.find(params[:id])

    if (params[:status] == 'Done' || params[:status] == 'Cancelled') && @plumbing_job.update(plumbing_job_params)
      render json: { plumbing_job: @plumbing_job }, status: :ok
    else
      render json: { errors: @plumbing_job.errors, notice: 'Status can only be Done or Cancelled' }, status: :unprocessable_entity
    end
  end

  private

  def plumbing_job_params
    params.require(:plumbing_job).permit(:status)
  end
end
