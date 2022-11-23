class ReviewsController < ApplicationController
  before_action :get_user

  def index
    reviews = @user.received_reviews
    render json: reviews
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
