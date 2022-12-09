class ReviewsController < ApplicationController
  rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response
  rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
  # before_action :authorized
  # skip_before_action :authorized, only: [:index]

  wrap_parameters format: []

  def index
    if params[:restaurant_id]
      restaurant = Restaurant.find(params[:restaurant_id])
      reviews = restaurant.reviews
    else
      reviews = Review.all
    end
    render json: reviews
  end

  def create
    review = Review.create!(review_params)
    render json: review, serializer: ReviewSerializer, status: :created
  end

  def update
    review = find_review
    review.update!(review_params)
    render json: review, status: :accepted
  end

  def destroy
    review = find_review
    review.destroy
    head :no_content
  end

  private

  def review_params
    params.permit(:title, :comment, :restaurant_id)
  end

  def render_unprocessable_entity_response(invalid)
    render json: { errors: invalid.record.errors.full_messages }, status: :unprocessable_entity
  end

  def render_not_found_response
    render json: { errors: ["Not authorized"] }, status: :not_found
  end

  # def authorized
  #   @current_user = User.find(session[:user_id])
  #   render json: { errors: ["Not authorized "] } unless session.include? :user_id
  # end

  def find_review
    Review.find(params[:id])
  end
end
