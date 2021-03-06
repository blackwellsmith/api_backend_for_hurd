class JobsController < ApplicationController
  before_action :set_job, only: [:show, :update, :destroy]

  # GET /jobs
  def index
    if logged_in
      @job = current_user.jobs.last

      render json: @job
    else
      render json: {
        error: 'log in first please jobs'
      } 
    end
  end

  # GET /jobs/1
  # def show
  #   render json: @job
  # end

  # POST /jobs
  def create
    #byebug
    @job = Job.new(job_params)
    @job.user_id = current_user.id
  
    if @job.save
      render json: @job, status: :created, location: @job
    else
      render json: @job.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /jobs/1
  def update
    if @job.update(job_params)
      render json: @job
    else
      render json: @job.errors, status: :unprocessable_entity
    end
  end

  # DELETE /jobs/1
  def destroy
    @job.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_job
      @job = Job.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def job_params
     ## byebug
      params.permit(:user_id, :name, :location, :pay)
    end
end
