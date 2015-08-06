class ComputersController < ApplicationController

  def index
   @computers = current_user.computers
  end

  def show
    # @computer = current_user.computers.find(computer_params)
    @computer = computer_path
  end

  def new
    @computer = current_user.computers.build
  end

  def edit
    @computer = current_user.computers.find(params[:id])
    # binding.pry
    # if @computer.update(computer_params)
    #   redirect_to computers_url
    # else
    #   render 'edit'
    # end
  end

  def update
    @computer = current_user.computers.find(params[:id])
    if @computer.update(computer_params)
      redirect_to computers_url
    else
      render 'edit'
    end
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

  def destroy
    # @computer = current_user.computers.find
    @computer.destroy
    redirect_to computers_path
    end

  private
  def computer_params
    params.require(:computer).permit(:name, :computer_type)
  end

end


#
# end
