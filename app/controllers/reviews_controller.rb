class ReviewsController < ApplicationController
  def create

    restaurant_id = params[:restaurant_id]
    @restaurant = Restaurant.find(restaurant_id)
    @review = Review.new(review_params)
    @review.restaurant = @restaurant

    if @review.save
		redirect_to restaurant_path(@restaurant)
    else
      @reviews = @restaurant.reviews
	render "restaurants/show", status: :unprocessable_entity
    end
  end
end

private

def review_params
    params.require(:review).permit(:content, :rating)
  end
