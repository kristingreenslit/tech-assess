class HomeController < ApplicationController
  skip_before_action :authenticate_user!
  def show
    #look into this for devise.
    @user = User.new
    redirect_to (computer_path(@computer))
  end

  def show
    @user = User.find(params[:id])
  end
end
