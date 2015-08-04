class ComputersController < ApplicationController

  # before any computer action happens, it will authenticate the user

  # another devise helper method that retrieves the user object that has been authenticated
  def index
    @computers = current_user.computers
  end
# !!! comment this back in after creating last two models!!!
  def show
    @computer = computer.find(params[:id])
  end

  def new
    @computer = computer.new
  end

  def edit
    @computer = computer.find(params[:id])
  end

  def create
    @computer = current_user.computers.new(computer_params)
    if @computer.save
      redirect_to @computer
    else render 'new'
    end
  end

  def update
    @computer = computer.find(params[:id])
    if @computer.update(computer_params)
      redirect_to @computer
    else
      render 'edit'
    end
	end

  def destroy
    @computer = computer.find(params[:id])
    @computer.destroy
    redirect_to computers_path
    end
  private
  def computer_params
    params.require(:user).permit(:body)
  end
end

#   def show
#     @user = User.find(params[:id])
#     @computer = Computer.find(params[:id])
#     @computer = Computer.all
#   end
#
# end
