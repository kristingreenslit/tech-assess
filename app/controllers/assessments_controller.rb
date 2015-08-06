class AssessmentsController < ApplicationController
before_action :create, :assessment_params

def index
    @assessments = Assessment.all
  end

  def new
    # route: /computers/:computer_id/assessments/new
    # e.g. /computers/5/assessments/new
    @computer = Computer.find(params[:computer_id])
    @assessment = @computer.assessments.build
  end

  def show
  end

  def edit
  end

  def create
    # params = { assessment: { name: 'foo', osversion: 'bar', ... }, ...}
    @computer = Computer.find(params[:computer_id])
    @assessment = @computer.assessments.build(assessment_params)
    if @assessment.save
      redirect_to computer_path(@computer)
    else
      # show the error on the "new" assessment page
      render :new
    end
  end

  private
  def assessment_params
    params.require(:assessment).permit(:name, :osversion, :shutoff, :pass, :cookies, :backups, :wifi)
  end

end
