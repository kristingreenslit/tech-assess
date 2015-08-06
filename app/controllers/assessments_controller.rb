class AssessmentsController < ApplicationController
before_action :create, :assessment_params

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
