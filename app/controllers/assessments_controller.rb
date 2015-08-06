class AssessmentsController < ApplicationController
  

  def index
    @assessments = Assessment.all
  end

  def create

  end

end
