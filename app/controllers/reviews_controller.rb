class ReviewsController < ApplicationController

  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new
  end

  def create
    @review = Review.new(reviews_params)
    @review.restaurant = Restaurant.find(params[:restaurant_id])
    @review.save
  end

  private

  def reviews_params
    params.require(:review).permit(:content, :rating)
  end
end
