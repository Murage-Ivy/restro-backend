class ApplicationController < ActionController::API
  include ActionController::Cookies

  # include ActionController::RequestForgeryProtection
  # protect_from_forgery_with::exception
  # skip_before_filter :verify_authenticity_token

  # before_action :authorized

  # def authorized
  #   @current_user = User.find(session[:user_id])
  #   render json: { errors: ["Not authorized "] }, status: :unauthorized unless session.include? :user_id
  # end
end
