class SessionsController < ApplicationController
  # rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
  # skip_before_action :authorized, only: [:create, :destroy]

  def create
    user = User.find_by(username: params[:username])
    if user&.authenticate(params[:password])
      session[:user_id] = user.id
      render json: user, status: :created
    else
      render json: { errors: ["Invalid password or username"] }, status: :unauthorized
    end
  end

  def destroy
    session.delete :user_id
    head :no_content
  end

  # def render_not_found_response
  #   render json: { errors: ["Not authorized"] }, status: :not_found
  # end
end
