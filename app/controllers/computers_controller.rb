class ComputersController < ApplicationController

  # before any computer action happens, it will authenticate the user

  # another devise helper method that retrieves the user object that has been authenticated
  # def index
  #   @computers = current_user.computers
  # end
  def index
   @computers = current_user.computers
  end

  def show
    @computer = current_user.computers.find(params[:id])
  end

  def new
    @computer = current_user.computers.build
  end

  def edit
    @computer = computer.find(params[:id])
  end

  def create
    # fail params.inspect
    @computer = current_user.computers.build(computer_params)
    if @computer.save
      redirect_to computers_url
    else
      render 'new'
    end
  end

  def update
    @computer = current_user.computers.find(params[:id])
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
    params.require(:computer).permit(:name)
  end
end


#
# end
