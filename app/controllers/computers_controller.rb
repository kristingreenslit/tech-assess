class ComputersController < ApplicationController



  def show
    @user = User.find(params[:id])
    @computer = Computer.find(params[:id])
    @computer = Computer.all
  end

end
