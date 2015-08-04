class UsersController < ApplicationController

  def show
    # @users = User.find(params[:id])
    # @user = User.create  #(whitelisted_post_params)
    redirect_to computer_path(@computer)
  end

  # def sign_up
  # end

  def new
    @user = User.new(username: params[:username])
    # redirect_to (computer_path(@computer))
  end

  def create
    @user = User.new(params[:user])
    # @user = User.create  #(whitelisted_post_params)
    if @user.save
       redirect_to @user, alert: "User created successfully."
    else
       redirect_to new_user_path, alert: "Error creating user."
    end
       redirect_to (computer_path(@computer))
  end

  # def update
  #  @user = User.find params[:id]
  #  @user = User.update  #(whitelisted_post_params)
  #  redirect_to (computer_path(@computer))
  # end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to (user_path(@user))
  end

  # def whitelisted_post_params
  #   params.require(:user).permit(:username)
  # end

end
