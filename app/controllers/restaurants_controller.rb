class RestaurantsController < ApplicationController
  rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
  skip_before_action :authorized

  def index
    restaurants = Restaurant.all
    render json: restaurants, status: :ok
  end

  def show
    restaurant = Restaurant.find(params[:id])
    render json: restaurant, serializer: RestaurantFoodSerializer, status: :ok
  end

  private

  def render_not_found_response
    render json: { errors: ["Restaurant not found"] }, status: :not_found
  end
end
