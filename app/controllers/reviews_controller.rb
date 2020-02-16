class ReviewsController < ApplicationController
  before_action :set_cocktail

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.cocktail = @cocktail
    @review.save
    redirect_to cocktail_path(@cocktail)
  end

  private

  def set_cocktail
    params
    @cocktail = Cocktail.find(params[:cocktail_id])
  end

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
