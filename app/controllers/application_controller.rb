class ApplicationController < ActionController::API
  include ActionController::Cookies
  before_action :authorized

  def authorized
    @current_user = User.find(session[:user_id])
    render json: { errors: ["Not authorized "] } unless session.include? :user_id
  end
end
