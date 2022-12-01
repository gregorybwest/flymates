class ReviewsController < ApplicationController
  before_action :get_user

  def index
    reviews = @user.received_reviews
    render json: reviews
  end

  def create
    review = Review.new(
      user_id: current_user.id,
      business_id: @user.id,
      body: params[:body],
      rating: params[:rating]
    )
    if review.save
      render json: review, status: :created
    else
      render json: { errors: review.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def show
    review = @user.received_reviews.find(params[:id])
    render json: review
  end

  
private
  def get_user
    @user = User.find(params[:user_id])
  end

end
