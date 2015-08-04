class UsersController < ApplicationController

  def show
    @user = User.create  #(whitelisted_post_params)
    # redirect_to computer_path(@computer)
  end

  # def sign_up
  # end

  def new
    @user = User.new(username: params[:username])
    # redirect_to (computer_path(@computer))
  end

  def create
    @user = User.create  #(whitelisted_post_params)
    redirect_to (computer_path(@computer))
  end

  def update
   @user = User.find params[:id]
  #  @user = User.update  #(whitelisted_post_params)
  #  redirect_to (computer_path(@computer))
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to (user_path(@user))
  end

  # def whitelisted_post_params
  #   params.require(:user).permit(:username)
  # end

end
