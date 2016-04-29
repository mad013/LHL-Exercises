class ReviewsController < ApplicationController
  
  def new
    @movie = Movie.find(params[:movie_id])
    @review = @movie.reviews.build #same as: @review = Review.new(movie_id: @movie.id), automatic assignment of the foreign key
  end

  def create
    @movie = Movie.find(params[:movie_id])
    @review = @movie.reviews.build(review_params)
    @review.user_id = @current_user.id
      if @review.save
        redirect_to @movie, notice: "Review created successfully"
      else 
        render :new 
      end 
  end

  protected

  def review_params
    params.require(:review).permit(:text, :rating_out_of_ten)
  end 
end
