class ReviewsController < ApplicationController
  def new
    @review = Review.new
  end

  def create
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new(review_params)
    @review.restaurant = @restaurant

    if @review.save
      redirect_to restaurant_path(@restaurant)
    else
      @reviews = @restaurant.reviews
      render "restaurants/show", status: :unprocessable_entity
    end
  end

  private

  def review_params
    params.required(:review).permit(:content, :rating)
  end
end
