class RestaurantsController < ApplicationController
  def index
  @restaurants = Restaurant.all
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.create(restaurant_params)
    redirect_to restaurant_path(@restaurant)
  end

  def show
    id = params[:id]
    @restaurant = Restaurant.find(id)

    @reviews = @restaurant.reviews

    @review = Review.new

  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :phone_number, :category)
  end

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
