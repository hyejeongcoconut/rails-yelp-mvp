class ReviewsController < ApplicationController

  def index
    @reviews = Review.all
  end

  def show
    @review = Review.find(params[:id])
  end

  def new
    @review = Review.new
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

  def update
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.find(params[:id])

  end

  def create
    @review = Review.find(params[restaurant_id])
    @review + Review.new(review_params)
    # reassign
    @review.garden_id = @garden.id
    if @review.save
      redirect_to restaurant_path(@review.restaurant)
    else
      render :new
    end
  end

  private

  def review_params
  params.require(:review).permit(:content, :rating)
  end
end
