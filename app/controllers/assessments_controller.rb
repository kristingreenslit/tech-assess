class AssessmentsController < ApplicationController
  def index
    @assessments = Assessment.all
  end

  def new
    # route: /computers/:computer_id/assessments/new
    # e.g. /computers/5/assessments/new
    @computer = Computer.find(params[:computer_id])
    @assessment = @computer.assessments.build
    render :new
  end

  def show
  end

  def edit
  end

  def create
    # fail params.inspect
    # params = { assessment: { osversion: '5' }, utf8: true, controller:'assessments' ...}
    # Note: see example param above to understand why we...

    assessment_name = params[:assessment].keys.first
    assessment_score = params[:assessment].values.first

    @computer = Computer.find(params[:computer_id])
    @assessment = @computer.assessments.build(name: assessment_name, score: assessment_score)
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
