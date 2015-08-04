class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  # before_action :authenticate_user!

#attempt to redirect to a different page after logging in with devise:
  # def after_sign_in_path_for(resource)
  #   user_path(current_user) assessment_path(@assessment)
  # end

end
