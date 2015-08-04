class HomeController < ApplicationController
  skip_before_action :authenticate_user!
  def show
    @user = User.new
    redirect_to (computer_path(@computer))
  end

end
