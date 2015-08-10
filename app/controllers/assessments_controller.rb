class AssessmentsController < ApplicationController
  ## what is this before_action doing for you?
before_action :create, :assessment_params
## i feel like your close with assessments. Look in a past assignment, like scribbles.
## Implement the create functionality you see in scribbles. and the rest of the CRUD functionality
  def index
    @assessments = Assessment.all
  end

  def show
  end
  def edit
  end
  def create
    # puts "hi"
    # binding.pry
    puts assessment_params
  end

  private
  def assessment_params
    params.permit(:name, :osversion, :shutoff, :pass, :cookies, :backups, :wifi)
  end

end
