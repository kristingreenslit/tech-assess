class HomeController < ApplicationController

  def show
    @user = User.new
    redirect_to (computer_path(@computer))
  end

end
